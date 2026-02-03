<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <title>KimKy Admin Login</title>
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
            rel="stylesheet" />
        <link
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap"
            rel="stylesheet" />
        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com?plugins=forms"></script>
        <script>
            tailwind.config = {
                theme: {
                    extend: {
                        colors: {
                            "primary": "#14b8a6",
                        },
                        fontFamily: {
                            "display": ["Manrope", "sans-serif"],
                        }
                    }
                }
            }
        </script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@300;400;500;600;700;800&display=swap');

            .glass-panel {
                background: rgba(255, 255, 255, 0.85);
                backdrop-filter: blur(12px);
                -webkit-backdrop-filter: blur(12px);
                border: 1px solid rgba(255, 255, 255, 0.6);
            }
        </style>
    </head>

    <body
        class="bg-gray-100 min-h-screen flex items-center justify-center bg-[radial-gradient(ellipse_at_top,_var(--tw-gradient-stops))] from-teal-100 via-gray-100 to-gray-200">

        <div class="w-full max-w-md p-4">
            <div class="glass-panel shadow-2xl rounded-2xl p-8 transform transition-all hover:scale-[1.01]">

                <!-- Header -->
                <div class="text-center mb-8">
                    <img src="img/logo.png" alt="Logo" class="h-12 w-auto mx-auto mb-4">
                    <h1 class="text-2xl font-bold text-gray-900 tracking-tight">Admin Portal</h1>
                    <p class="text-sm text-gray-500 mt-2">Please sign in to continue</p>
                </div>

                <!-- Error Message -->
                <% String error=(String) request.getAttribute("error"); if(error !=null) { %>
                    <div
                        class="mb-6 p-4 rounded-xl bg-red-50 border border-red-100 text-red-600 text-sm flex items-center gap-2">
                        <span class="material-symbols-outlined text-lg">error</span>
                        <%= error %>
                    </div>
                    <% } %>

                        <!-- Form -->
                        <form action="login" method="post" class="space-y-6">
                            <div>
                                <label class="block text-sm font-semibold text-gray-700 mb-2">Username</label>
                                <div class="relative">
                                    <span class="absolute inset-y-0 left-0 pl-3 flex items-center text-gray-400">
                                        <span class="material-symbols-outlined text-lg">person</span>
                                    </span>
                                    <input type="text" name="username" required
                                        class="w-full pl-10 pr-4 py-3 rounded-xl border-gray-200 bg-white focus:border-primary focus:ring-primary/20 transition-all text-sm shadow-sm"
                                        placeholder="Enter your username">
                                </div>
                            </div>

                            <div>
                                <label class="block text-sm font-semibold text-gray-700 mb-2">Password</label>
                                <div class="relative">
                                    <span class="absolute inset-y-0 left-0 pl-3 flex items-center text-gray-400">
                                        <span class="material-symbols-outlined text-lg">lock</span>
                                    </span>
                                    <input type="password" name="password" required
                                        class="w-full pl-10 pr-4 py-3 rounded-xl border-gray-200 bg-white focus:border-primary focus:ring-primary/20 transition-all text-sm shadow-sm"
                                        placeholder="Enter your password">
                                </div>
                            </div>

                            <button type="submit"
                                class="w-full py-3.5 rounded-xl bg-primary text-white font-bold text-sm shadow-lg shadow-red-200 hover:bg-red-600 hover:shadow-red-300 transition-all transform hover:-translate-y-0.5">
                                Sign In
                            </button>
                        </form>

                        <div class="mt-8 text-center">
                            <a href="../resume.jsp"
                                class="text-sm text-gray-500 hover:text-primary transition-colors flex items-center justify-center gap-1 group">
                                <span
                                    class="material-symbols-outlined text-lg group-hover:-translate-x-1 transition-transform">arrow_back</span>
                                Back to Website
                            </a>
                        </div>
            </div>

            <p class="text-center text-xs text-gray-400 mt-6">
                &copy; 2026 KimKy Vu. Restricted Access.
            </p>
        </div>

    </body>

    </html>