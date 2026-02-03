<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html class="light" lang="en">

    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <title>KimKy Vu - Admin Dashboard</title>
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com" rel="preconnect" />
        <link crossorigin="" href="https://fonts.gstatic.com" rel="preconnect" />
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap"
            rel="stylesheet" />
        <link
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
            rel="stylesheet" />
        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <!-- Theme Config -->
        <script id="tailwind-config">
            tailwind.config = {
                darkMode: "class",
                theme: {
                    extend: {
                        colors: {
                            "primary": "#14b8a6", /* Vibrant Teal */
                            "background-light": "#f4f4f4",
                            "background-dark": "#221013",
                            "surface-light": "#ffffff",
                            "surface-dark": "#331c20",
                            "text-main": "#1b0d10",
                            "text-sub": "#6b7280",
                        },
                        fontFamily: {
                            "display": ["Manrope", "sans-serif"],
                            "body": ["Manrope", "sans-serif"],
                        },
                        borderRadius: { "DEFAULT": "0.375rem", "lg": "0.5rem", "xl": "0.75rem", "full": "9999px" },
                        boxShadow: {
                            'tile': '0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06)',
                            'tile-hover': '0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)',
                        }
                    },
                },
            }
        </script>
        <style>
            /* Import Manrope */
            @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@300;400;500;600;700;800&display=swap');

            /* Glassmorphism Utilities */
            .glass-panel {
                background: rgba(255, 255, 255, 0.7);
                backdrop-filter: blur(12px);
                -webkit-backdrop-filter: blur(12px);
                border: 1px solid rgba(255, 255, 255, 0.5);
            }

            /* Custom scrollbar */
            ::-webkit-scrollbar {
                width: 8px;
                height: 8px;
            }

            ::-webkit-scrollbar-track {
                background: transparent;
            }

            ::-webkit-scrollbar-thumb {
                background: #cbd5e1;
                border-radius: 4px;
            }

            ::-webkit-scrollbar-thumb:hover {
                background: #94a3b8;
            }

            .fade-in {
                animation: fadeIn 0.3s ease-in-out;
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                    transform: translateY(10px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }
        </style>
    </head>

    <body
        class="bg-background-light dark:bg-background-dark text-text-main font-display min-h-screen flex flex-col overflow-x-hidden bg-[radial-gradient(ellipse_at_top_right,_var(--tw-gradient-stops))] from-teal-100/40 via-gray-100 to-gray-100">

        <!-- Shell Bar (Top Navigation) -->
        <header class="sticky top-0 z-50 w-full glass-panel h-16 px-6 flex items-center justify-between shadow-sm">
            <!-- Left: Branding & Menu -->
            <div class="flex items-center gap-4 min-w-fit">
                <button class="p-2 rounded-full hover:bg-black/5 text-gray-600 transition-colors">
                    <span class="material-symbols-outlined text-[24px]">menu</span>
                </button>
                <div class="flex items-center gap-3 cursor-pointer" onclick="openView('dashboard-view')">
                    <!-- Logo Icon -->
                    <img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo" class="h-8 w-auto">
                </div>
            </div>

            <!-- Center: Global Search -->
            <div class="flex-1 flex justify-center max-w-2xl px-4 hidden md:flex">
                <div class="relative w-full max-w-[480px]">
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <span class="material-symbols-outlined text-gray-400 text-[20px]">search</span>
                    </div>
                    <input
                        class="block w-full rounded-full border-transparent bg-white/60 focus:bg-white py-2 pl-10 pr-4 text-sm text-gray-900 placeholder-gray-500 focus:border-primary focus:ring-2 focus:ring-primary/20 focus:outline-none transition-all shadow-sm"
                        placeholder="Search data..." type="text" />
                </div>
            </div>

            <!-- Right: Actions & Profile -->
            <div class="flex items-center gap-2 sm:gap-4 min-w-fit justify-end">
                <button class="relative p-2 rounded-full hover:bg-black/5 text-gray-600 transition-colors">
                    <span class="material-symbols-outlined text-[24px]">notifications</span>
                    <span class="absolute top-2 right-2 size-2.5 bg-primary rounded-full border-2 border-white"></span>
                </button>

                <div class="h-8 w-px bg-gray-300 mx-1"></div>

                <button class="flex items-center gap-3 rounded-full p-1 pl-2 hover:bg-black/5 transition-colors group">
                    <div class="text-right hidden md:block">
                        <span class="text-sm font-bold text-gray-800 block leading-tight">KimKy Vu</span>
                        <span class="text-xs text-gray-500">Administrator</span>
                    </div>
                    <div
                        class="size-10 rounded-full bg-gradient-to-br from-gray-200 to-gray-300 flex items-center justify-center border-2 border-white shadow-sm text-gray-600 font-bold overflow-hidden">
                        KV
                    </div>
                </button>
            </div>
        </header>

        <!-- MAIN CONTENT: LAYOUT CONTAINER -->
        <div class="flex-1 w-full max-w-[1440px] mx-auto p-4 sm:p-6 lg:p-8 relative">

            <!-- VIEW 1: DASHBOARD (LAUNCHPAD) -->
            <main id="dashboard-view" class="fade-in">
                <div class="mb-8">
                    <div class="flex items-center justify-between mb-6 px-1">
                        <div>
                            <h2 class="text-2xl font-bold text-gray-800 tracking-tight">Overview</h2>
                            <p class="text-sm text-text-sub">Welcome back, here's what's happening today.</p>
                        </div>
                        <button
                            class="text-sm px-4 py-2 bg-white border border-gray-200 rounded-lg font-medium hover:bg-gray-50 shadow-sm transition-all">Customize</button>
                    </div>

                    <!-- Fiori Tile Grid -->
                    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">

                        <!-- Tile 1: Manage Profile -->
                        <div onclick="openView('profile-view')"
                            class="group relative flex flex-col justify-between h-48 p-6 bg-surface-light/80 backdrop-blur-md rounded-2xl shadow-tile hover:shadow-tile-hover border border-white/50 transition-all cursor-pointer hover:-translate-y-1">
                            <div class="flex justify-between items-start">
                                <div
                                    class="p-3 bg-red-50 rounded-xl text-primary group-hover:bg-primary group-hover:text-white transition-colors">
                                    <span class="material-symbols-outlined text-[28px]">person</span>
                                </div>
                                <span
                                    class="bg-green-100 text-green-700 text-xs font-bold px-2 py-1 rounded-full">Active</span>
                            </div>
                            <div>
                                <h3 class="text-lg font-bold text-gray-900 leading-tight">Manage Profile</h3>
                                <p class="text-sm text-gray-500 mt-1">Basic Info & Avatar</p>
                            </div>
                            <!-- Hover Line -->
                            <div
                                class="absolute bottom-0 left-0 w-full h-1 bg-primary scale-x-0 group-hover:scale-x-100 transition-transform origin-left rounded-b-2xl">
                            </div>
                        </div>

                        <!-- Tile 2: Experience -->
                        <div onclick="alert('Module coming soon')"
                            class="group relative flex flex-col justify-between h-48 p-6 bg-surface-light/80 backdrop-blur-md rounded-2xl shadow-tile hover:shadow-tile-hover border border-white/50 transition-all cursor-pointer hover:-translate-y-1">
                            <div class="flex justify-between items-start">
                                <div
                                    class="p-3 bg-blue-50 rounded-xl text-blue-600 group-hover:bg-blue-600 group-hover:text-white transition-colors">
                                    <span class="material-symbols-outlined text-[28px]">work</span>
                                </div>
                                <span class="text-2xl font-bold text-gray-800">3</span>
                            </div>
                            <div>
                                <h3 class="text-lg font-bold text-gray-900 leading-tight">Experience</h3>
                                <p class="text-sm text-gray-500 mt-1">Job History</p>
                            </div>
                        </div>

                        <!-- Tile 3: Projects -->
                        <div onclick="alert('Module coming soon')"
                            class="group relative flex flex-col justify-between h-48 p-6 bg-surface-light/80 backdrop-blur-md rounded-2xl shadow-tile hover:shadow-tile-hover border border-white/50 transition-all cursor-pointer hover:-translate-y-1">
                            <div class="flex justify-between items-start">
                                <div
                                    class="p-3 bg-purple-50 rounded-xl text-purple-600 group-hover:bg-purple-600 group-hover:text-white transition-colors">
                                    <span class="material-symbols-outlined text-[28px]">code</span>
                                </div>
                                <span class="text-2xl font-bold text-gray-800">4</span>
                            </div>
                            <div>
                                <h3 class="text-lg font-bold text-gray-900 leading-tight">Projects</h3>
                                <p class="text-sm text-gray-500 mt-1">Portfolio Items</p>
                            </div>
                        </div>

                        <!-- Tile 4: Skills -->
                        <div onclick="alert('Module coming soon')"
                            class="group relative flex flex-col justify-between h-48 p-6 bg-surface-light/80 backdrop-blur-md rounded-2xl shadow-tile hover:shadow-tile-hover border border-white/50 transition-all cursor-pointer hover:-translate-y-1">
                            <div class="flex justify-between items-start">
                                <div
                                    class="p-3 bg-orange-50 rounded-xl text-orange-600 group-hover:bg-orange-600 group-hover:text-white transition-colors">
                                    <span class="material-symbols-outlined text-[28px]">bar_chart</span>
                                </div>
                                <span class="text-2xl font-bold text-gray-800">12</span>
                            </div>
                            <div>
                                <h3 class="text-lg font-bold text-gray-900 leading-tight">Skills</h3>
                                <p class="text-sm text-gray-500 mt-1">Technical Abilities</p>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Quick Admin Tools -->
                <div class="mt-12">
                    <h2 class="text-xl font-bold text-gray-800 tracking-tight mb-6 px-1">Quick Actions</h2>
                    <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                        <button
                            class="flex items-center gap-3 p-4 bg-white border border-gray-200 rounded-xl hover:border-primary hover:shadow-md transition-all text-left group">
                            <span
                                class="material-symbols-outlined text-gray-400 group-hover:text-primary">add_circle</span>
                            <span class="font-medium text-gray-700 group-hover:text-primary">New Project</span>
                        </button>
                        <button
                            class="flex items-center gap-3 p-4 bg-white border border-gray-200 rounded-xl hover:border-primary hover:shadow-md transition-all text-left group">
                            <span
                                class="material-symbols-outlined text-gray-400 group-hover:text-primary">upload_file</span>
                            <span class="font-medium text-gray-700 group-hover:text-primary">Upload CV</span>
                        </button>
                        <button
                            class="flex items-center gap-3 p-4 bg-white border border-gray-200 rounded-xl hover:border-primary hover:shadow-md transition-all text-left group">
                            <span
                                class="material-symbols-outlined text-gray-400 group-hover:text-primary">visibility</span>
                            <span class="font-medium text-gray-700 group-hover:text-primary">View Site</span>
                        </button>
                    </div>
                </div>
            </main>

            <!-- VIEW 2: EDIT PROFILE (OBJECT PAGE STYLE) -->
            <main id="profile-view" class="hidden fade-in">
                <!-- Breadcrumb / Back -->
                <div class="flex items-center gap-2 mb-6 text-sm">
                    <button onclick="openView('dashboard-view')"
                        class="flex items-center gap-1 text-gray-500 hover:text-primary transition-colors">
                        <span class="material-symbols-outlined text-lg">arrow_back</span>
                        Home
                    </button>
                    <span class="text-gray-300">/</span>
                    <span class="text-gray-900 font-medium">Manage Profile</span>
                </div>

                <div class="flex flex-col lg:flex-row gap-8">
                    <!-- Left: Sidebar/Profile Card -->
                    <div class="lg:w-1/3">
                        <div
                            class="bg-white rounded-2xl shadow-sm border border-gray-200 p-6 flex flex-col items-center">
                            <div class="relative group cursor-pointer">
                                <div class="size-32 rounded-full bg-gray-100 bg-cover bg-center border-4 border-white shadow-lg overflow-hidden"
                                    style="background-image: url('${pageContext.request.contextPath}/img/avatar.jpg')">
                                </div>
                                <div
                                    class="absolute inset-0 bg-black/40 rounded-full flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity">
                                    <span class="material-symbols-outlined text-white">edit</span>
                                </div>
                            </div>
                            <h2 class="text-xl font-bold text-gray-900 mt-4">KimKy Vu</h2>
                            <p class="text-primary font-medium">Administrator</p>

                            <div class="w-full mt-6 space-y-3">
                                <div class="flex justify-between text-sm py-2 border-b border-gray-100">
                                    <span class="text-gray-500">Status</span>
                                    <span class="text-green-600 font-bold bg-green-50 px-2 py-0.5 rounded">Online</span>
                                </div>
                                <div class="flex justify-between text-sm py-2 border-b border-gray-100">
                                    <span class="text-gray-500">Member Since</span>
                                    <span class="font-medium">Jan 2024</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Right: Edit Form -->
                    <div class="lg:w-2/3">
                        <div class="bg-white rounded-2xl shadow-sm border border-gray-200 overflow-hidden">
                            <div
                                class="px-8 py-6 border-b border-gray-100 bg-gray-50/50 flex justify-between items-center">
                                <h3 class="text-lg font-bold text-gray-900">General Information</h3>
                                <button class="text-sm text-primary font-medium hover:underline">Reset Changes</button>
                            </div>

                            <div class="p-8 space-y-6">
                                <!-- Full Name -->
                                <div>
                                    <label class="block text-sm font-semibold text-gray-700 mb-2">Full Name</label>
                                    <input type="text"
                                        class="w-full rounded-xl border-gray-200 bg-gray-50 focus:bg-white focus:border-primary focus:ring-primary/20 transition-all py-3 px-4 text-sm"
                                        value="KimKy Vu">
                                </div>

                                <!-- Job Title -->
                                <div>
                                    <label class="block text-sm font-semibold text-gray-700 mb-2">Job Title</label>
                                    <input type="text"
                                        class="w-full rounded-xl border-gray-200 bg-gray-50 focus:bg-white focus:border-primary focus:ring-primary/20 transition-all py-3 px-4 text-sm"
                                        value="Software Engineer">
                                </div>

                                <!-- Bio -->
                                <div>
                                    <label class="block text-sm font-semibold text-gray-700 mb-2">Bio
                                        Description</label>
                                    <textarea
                                        class="w-full rounded-xl border-gray-200 bg-gray-50 focus:bg-white focus:border-primary focus:ring-primary/20 transition-all py-3 px-4 text-sm"
                                        rows="4">Passionate developer building cool things.</textarea>
                                </div>

                                <!-- Contact Info Group -->
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                    <div>
                                        <label class="block text-sm font-semibold text-gray-700 mb-2">Email</label>
                                        <input type="email"
                                            class="w-full rounded-xl border-gray-200 bg-gray-50 focus:bg-white focus:border-primary focus:ring-primary/20 transition-all py-3 px-4 text-sm"
                                            value="kimkyvu@example.com">
                                    </div>
                                    <div>
                                        <label class="block text-sm font-semibold text-gray-700 mb-2">Phone</label>
                                        <input type="text"
                                            class="w-full rounded-xl border-gray-200 bg-gray-50 focus:bg-white focus:border-primary focus:ring-primary/20 transition-all py-3 px-4 text-sm"
                                            value="+84 901 234 567">
                                    </div>
                                </div>
                            </div>

                            <!-- Footer Actions -->
                            <div class="px-8 py-5 border-t border-gray-100 bg-gray-50 flex justify-end gap-3">
                                <button onclick="openView('dashboard-view')"
                                    class="px-6 py-2.5 rounded-xl border border-gray-200 text-gray-600 font-bold text-sm hover:bg-white hover:shadow-sm transition-all">Cancel</button>
                                <button onclick="saveProfile()"
                                    class="px-6 py-2.5 rounded-xl bg-primary text-white font-bold text-sm shadow-md hover:bg-red-600 hover:shadow-lg transition-all focus:ring-2 focus:ring-offset-2 focus:ring-primary">Save
                                    Changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

        </div>

        <script>
            function openView(viewId) {
                // Hide all views
                document.getElementById('dashboard-view').classList.add('hidden');
                document.getElementById('profile-view').classList.add('hidden');

                // Show selected view
                const target = document.getElementById(viewId);
                target.classList.remove('hidden');

                // Re-trigger animation
                target.classList.remove('fade-in');
                void target.offsetWidth; // trigger reflow
                target.classList.add('fade-in');

                // Scroll to top
                window.scrollTo(0, 0);
            }

            function saveProfile() {
                // Mock save
                const btn = event.target;
                const originalText = btn.innerText;
                btn.innerText = "Saving...";
                btn.disabled = true;

                setTimeout(() => {
                    alert("Changes saved successfully! (Mock)");
                    btn.innerText = originalText;
                    btn.disabled = false;
                    openView('dashboard-view');
                }, 800);
            }
        </script>

    </body>

    </html>