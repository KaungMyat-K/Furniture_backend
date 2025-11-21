import { randomBytes } from "crypto";

export const generateOtp = (): number => {
  return (parseInt(randomBytes(3).toString("hex"), 16) % 900000) + 100000;
};

export const generateToken = (): string => {
  return randomBytes(32).toString("hex");
};
