export const checkUserExists = (user: any) => {
  if (user) {
    const error: any = new Error("Phone number already registered");
    error.status = 409;
    error.code = "Error_Already_Exists";
    throw error;
  }
};
