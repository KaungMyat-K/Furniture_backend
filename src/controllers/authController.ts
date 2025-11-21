import { Request, Response, NextFunction } from "express";
import { body, validationResult } from "express-validator";
import { createOtp, getUserByPhone } from "../services/authServices";
import { checkUserExists } from "../utils/auth";
import { generateOtp, generateToken } from "../utils/generate";

export const register = [
  body("phone", "Invalid phone number")
    .trim()
    .notEmpty()
    .matches(/^[0-9]+$/)
    .isLength({ min: 5, max: 12 })
    .withMessage("Phone number must be between 5 and 12 digits"),
  async (req: Request, res: Response, next: NextFunction) => {
    const errors = validationResult(req).array({ onlyFirstError: true });
    if (errors.length > 0) {
      const error: any = new Error(errors[0].msg);
      error.status = 400;
      error.code = "Error_VALIDATION";
      return next(error);
    }
    let phone = req.body.phone;
    if (phone.slice(0, 1) === "09") {
      phone = phone.substring(2, phone.length);
    }
    const user = await getUserByPhone(phone);
    checkUserExists(user);
    const otp = generateOtp().toString();
    const token = generateToken();
    const otpData = {
      phone,
      otp,
      rememberToken: token,
      count: 1,
    };
    const result = await createOtp(otpData);
    res.status(200).json({
      message: `we are sending OTP to 09${result.phone}`,
      phone: result.phone,
      token: result.rememberToken,
    });
  },
];

export const verifyOtp = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  res
    .status(200)
    .json({ message: "ready to use", userId: (req as any).userId || 99 });
};

export const confirmPassword = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  res
    .status(200)
    .json({ message: "ready to use", userId: (req as any).userId || 99 });
};

export const login = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  res
    .status(200)
    .json({ message: "ready to use", userId: (req as any).userId || 99 });
};
