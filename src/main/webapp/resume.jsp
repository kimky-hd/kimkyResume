<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html class="scroll-smooth" lang="en">

    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <title>Vu Kim Ky - Vibrant Portfolio</title>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@300;400;500;600;700;800&amp;display=swap"
            rel="stylesheet" />
        <link
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
            rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <script src="js/tailwind-config.js"></script>
        <script src="js/intro.js?v=2" defer></script>
    </head>

    <body class="font-display text-text-main antialiased bg-slate-50 selection:bg-vibrant-teal selection:text-white">
        <!-- Intro Overlay -->
        <!-- Intro Overlay -->
        <div id="intro-overlay" class="px-4 text-center">
            <h1 class="text-4xl sm:text-6xl md:text-8xl font-black mb-4 tracking-tighter text-slate-900">
                <span id="intro-hi"></span><span id="intro-name"
                    class="text-transparent bg-clip-text bg-gradient-to-r from-vibrant-teal to-vibrant-blue hero-animate-text"></span>
            </h1>
            <h2 id="intro-job" class="text-xl md:text-4xl font-bold text-vibrant-teal tracking-wide"></h2>
        </div>

        <div class="relative flex h-auto min-h-screen w-full flex-col overflow-x-hidden">


            <jsp:include page="header.jsp" />

            <div class="layout-container flex grow flex-col relative z-10 pt-20" id="home">
                <div class="px-4 md:px-10 lg:px-40 flex flex-1 justify-center py-16 md:py-32">
                    <div class="layout-content-container flex flex-col max-w-[1200px] flex-1">
                        <div class="@container">
                            <div class="flex flex-col-reverse gap-16 lg:flex-row items-center">
                                <div class="flex flex-col gap-8 flex-1 text-center lg:text-left">
                                    <div class="flex flex-col gap-3">
                                        <div class="inline-flex items-center justify-center lg:justify-start gap-2">
                                            <span
                                                class="px-3 py-1 rounded-full bg-pastel-mint text-emerald-700 text-xs font-bold uppercase tracking-wider">Available
                                                for work</span>
                                        </div>
                                        <h1
                                            class="text-text-heading text-5xl lg:text-7xl font-extrabold leading-[1.1] tracking-tight">
                                            Hi, I'm <span
                                                class="text-transparent bg-clip-text bg-gradient-to-r from-vibrant-teal to-vibrant-blue hero-animate-text">KimKy
                                                Vu</span>
                                        </h1>
                                        <h2 class="text-slate-500 text-2xl md:text-4xl font-bold leading-tight">
                                            IT Business Analyst.
                                        </h2>
                                        <p class="text-text-main text-lg leading-relaxed max-w-xl mx-auto lg:mx-0 mt-2">
                                            Specializing in <span class="font-bold text-vibrant-teal">Securities &amp;
                                                Fintech Operations</span>. I bridge the gap between complex financial
                                            systems like KRX and intuitive user experiences.
                                        </p>
                                    </div>
                                    <div class="flex gap-4 justify-center lg:justify-start">
                                        <a class="flex items-center justify-center rounded-full px-8 py-4 bg-vibrant-teal text-white font-bold shadow-lg shadow-teal-200 hover:-translate-y-1 hover:shadow-xl transition-all"
                                            href="#projects">
                                            View Projects
                                        </a>
                                        <a class="flex items-center justify-center rounded-full px-8 py-4 bg-white text-text-heading border border-slate-200 font-bold hover:bg-slate-50 transition-all"
                                            href="#contact">
                                            Contact Me
                                        </a>
                                    </div>
                                </div>
                                <div class="flex-1 w-full max-w-[500px] relative perspective-1000">
                                    <div
                                        class="relative z-10 w-full aspect-[4/3] rounded-3xl overflow-hidden glass-panel shadow-2xl shadow-blue-100 p-3 transform rotate-2 hover:rotate-0 transition-all duration-500">
                                        <div
                                            class="w-full h-full rounded-2xl overflow-hidden bg-slate-100 relative group">
                                            <div class="absolute inset-0 bg-indigo-500/10 z-10 mix-blend-multiply">
                                            </div>
                                            <!-- IMG HERE: Replace 'project-bg-1' class with your own image via style='background-image: url("img/your-profile.jpg")' OR update .project-bg-1 in style.css -->
                                            <div class="w-full h-full bg-cover bg-center transition-transform duration-700 group-hover:scale-105"
                                                style="background-image: url('img/avatar.jpg');">
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        class="absolute -top-4 -right-4 w-24 h-24 bg-pastel-peach rounded-full blur-xl opacity-80 -z-10">
                                    </div>
                                    <div
                                        class="absolute -bottom-8 -left-8 w-32 h-32 bg-pastel-mint rounded-full blur-xl opacity-80 -z-10">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layout-container flex flex-col w-full py-20 bg-white/50 backdrop-blur-sm relative z-10"
                id="about">
                <div class="px-4 md:px-10 lg:px-40 flex flex-1 justify-center">
                    <div class="layout-content-container flex flex-col max-w-[1000px] flex-1" data-aos="fade-up">
                        <div class="flex flex-col items-center gap-2 mb-16 text-center">
                            <span class="text-vibrant-teal font-bold tracking-widest uppercase text-sm">Discover</span>
                            <h2 class="text-text-heading text-3xl md:text-4xl font-extrabold">About Me</h2>
                            <div class="w-16 h-1.5 bg-pastel-mint rounded-full mt-2"></div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-start">
                            <div
                                class="glass-panel p-8 rounded-3xl shadow-lg shadow-slate-100 space-y-6 text-text-main leading-relaxed">
                                <p>
                                    I am an IT Business Analyst with a strong foundation in <span
                                        class="font-bold text-vibrant-purple">Software Engineering</span> and hands-on
                                    experience in the Fintech and E-commerce domains.
                                </p>
                                <p>
                                    I have been directly involved in the operation and rollout of the new securities
                                    trading system (<span class="font-bold text-vibrant-teal">KRX</span>) at VPS
                                    Securities. I am proficient in requirement elicitation, business process modeling
                                    (BPMN), and technical documentation.
                                </p>
                                <div class="pt-4 border-t border-slate-100 mt-6">
                                    <h3 class="text-text-heading font-bold mb-4 flex items-center gap-2">
                                        <span class="material-symbols-outlined text-vibrant-purple">school</span>
                                        Education
                                    </h3>
                                    <ul class="space-y-4">
                                        <li
                                            class="bg-slate-50 p-4 rounded-xl border border-slate-100 flex items-start gap-3">
                                            <div class="bg-pastel-lavender p-2 rounded-lg text-vibrant-purple">
                                                <span
                                                    class="material-symbols-outlined text-sm font-bold block">school</span>
                                            </div>
                                            <div>
                                                <span class="block text-text-heading font-bold">Software Engineering
                                                    (SE)</span>
                                                <span class="text-xs text-slate-500 font-medium">FPT University | Sep
                                                    2022 - Present</span>
                                            </div>
                                        </li>
                                        <li
                                            class="bg-slate-50 p-4 rounded-xl border border-slate-100 flex items-start gap-3">
                                            <div class="bg-pastel-peach p-2 rounded-lg text-orange-600">
                                                <span
                                                    class="material-symbols-outlined text-sm font-bold block">verified</span>
                                            </div>
                                            <div>
                                                <span class="block text-text-heading font-bold">Business Analyst
                                                    Foundation</span>
                                                <span class="text-xs text-slate-500 font-medium">Hai Lua Academy | Dec
                                                    2023 - Feb 2024</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="space-y-8">
                                <div class="glass-panel p-8 rounded-3xl shadow-lg shadow-slate-100">
                                    <h3 class="text-text-heading font-bold mb-6 flex items-center gap-2">
                                        <span class="material-symbols-outlined text-vibrant-teal">psychology</span>
                                        Skills &amp; Tools
                                    </h3>
                                    <div class="marquee-container w-full">
                                        <div class="marquee-content py-2">
                                            <!-- Original List -->
                                            <span
                                                class="px-4 py-2 bg-pastel-mint text-emerald-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">BPMN</span>
                                            <span
                                                class="px-4 py-2 bg-pastel-sky text-sky-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">SQL</span>
                                            <span
                                                class="px-4 py-2 bg-pastel-lavender text-purple-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">Figma</span>
                                            <span
                                                class="px-4 py-2 bg-pastel-peach text-orange-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">JIRA/Confluence</span>
                                            <span
                                                class="px-4 py-2 bg-pastel-rose text-rose-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">Data
                                                Analysis</span>
                                            <span
                                                class="px-4 py-2 bg-slate-100 text-slate-700 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">Agile/Scrum</span>
                                            <span
                                                class="px-4 py-2 bg-slate-100 text-slate-700 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">BRD/SRS
                                                Writing</span>
                                            <span
                                                class="px-4 py-2 bg-slate-100 text-slate-700 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">UAT</span>

                                            <!-- Duplicated List for Seamless Loop -->
                                            <span
                                                class="px-4 py-2 bg-pastel-mint text-emerald-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">BPMN</span>
                                            <span
                                                class="px-4 py-2 bg-pastel-sky text-sky-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">SQL</span>
                                            <span
                                                class="px-4 py-2 bg-pastel-lavender text-purple-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">Figma</span>
                                            <span
                                                class="px-4 py-2 bg-pastel-peach text-orange-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">JIRA/Confluence</span>
                                            <span
                                                class="px-4 py-2 bg-pastel-rose text-rose-800 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">Data
                                                Analysis</span>
                                            <span
                                                class="px-4 py-2 bg-slate-100 text-slate-700 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">Agile/Scrum</span>
                                            <span
                                                class="px-4 py-2 bg-slate-100 text-slate-700 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">BRD/SRS
                                                Writing</span>
                                            <span
                                                class="px-4 py-2 bg-slate-100 text-slate-700 rounded-lg font-bold text-sm shadow-sm whitespace-nowrap">UAT</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="glass-panel p-8 rounded-3xl shadow-lg shadow-slate-100">
                                    <h3 class="text-text-heading font-bold mb-6 flex items-center gap-2">
                                        <span class="material-symbols-outlined text-vibrant-blue">language</span>
                                        Languages
                                    </h3>
                                    <div class="space-y-5">
                                        <div>
                                            <div class="flex justify-between items-center text-sm mb-2">
                                                <span class="text-text-heading font-bold">English (Advanced B2)</span>
                                                <span class="text-vibrant-teal font-bold">80%</span>
                                            </div>
                                            <div class="w-full bg-slate-100 rounded-full h-2.5">
                                                <div
                                                    class="bg-gradient-to-r from-teal-200 to-vibrant-teal h-2.5 rounded-full w-80-percent">
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="flex justify-between items-center text-sm mb-2">
                                                <span class="text-text-heading font-bold">Vietnamese (Native)</span>
                                                <span class="text-vibrant-teal font-bold">100%</span>
                                            </div>
                                            <div class="w-full bg-slate-100 rounded-full h-2.5">
                                                <div class="bg-gradient-to-r from-teal-200 to-vibrant-teal h-2.5 rounded-full"
                                                    style="width: 100%"></div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="flex justify-between items-center text-sm mb-2">
                                                <span class="text-text-heading font-bold">Japanese (Basic)</span>
                                                <span class="text-vibrant-teal font-bold">40%</span>
                                            </div>
                                            <div class="w-full bg-slate-100 rounded-full h-2.5">
                                                <div class="bg-gradient-to-r from-teal-200 to-vibrant-teal h-2.5 rounded-full"
                                                    style="width: 40%"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layout-container flex flex-col w-full py-20 relative z-10" id="experience">
                <div class="px-4 md:px-10 lg:px-40 flex flex-1 justify-center">
                    <div class="layout-content-container flex flex-col max-w-[900px] flex-1" data-aos="fade-up">
                        <div class="flex flex-col items-center gap-2 mb-16 text-center">
                            <span class="text-vibrant-blue font-bold tracking-widest uppercase text-sm">Career
                                Path</span>
                            <h2 class="text-text-heading text-3xl md:text-4xl font-extrabold">Work Experience</h2>
                            <div class="w-16 h-1.5 bg-pastel-sky rounded-full mt-2"></div>
                        </div>
                        <div class="relative pl-12 timeline-line space-y-12">
                            <div class="relative group" data-aos="fade-up" data-aos-delay="100">
                                <div
                                    class="absolute -left-[58px] top-6 size-5 bg-white rounded-full border-4 border-vibrant-teal shadow-md z-10 group-hover:scale-125 transition-transform">
                                </div>
                                <div
                                    class="bg-pastel-sky/30 border border-sky-100 p-8 rounded-3xl hover:shadow-lg hover:bg-pastel-sky/50 transition-all duration-300">
                                    <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between mb-4">
                                        <div>
                                            <h3 class="text-xl font-extrabold text-text-heading">Business Analyst</h3>
                                            <h4 class="text-vibrant-blue font-bold text-lg mt-1">VPS Securities</h4>
                                        </div>
                                        <span
                                            class="px-3 py-1 bg-white rounded-lg text-xs font-bold text-sky-700 shadow-sm mt-2 sm:mt-0 inline-block text-center whitespace-nowrap">Apr
                                            2025 - Present</span>
                                    </div>
                                    <ul
                                        class="list-disc list-outside ml-4 space-y-2 text-text-main text-sm marker:text-vibrant-blue">
                                        <li>Operated daily securities listing reports and ensured accurate submissions.
                                        </li>
                                        <li>Executed securities buy/sell orders on behalf of clients, maintaining strict
                                            compliance.</li>
                                        <li>Worked across dual trading systems: legacy platform and the <span
                                                class="font-bold text-text-heading">new KRX securities system</span>.
                                        </li>
                                        <li>Participated in UAT (User Acceptance Testing) during the development of new
                                            trading website.</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="relative group" data-aos="fade-up" data-aos-delay="200">
                                <div
                                    class="absolute -left-[58px] top-6 size-5 bg-white rounded-full border-4 border-vibrant-purple shadow-md z-10 group-hover:scale-125 transition-transform">
                                </div>
                                <div
                                    class="bg-pastel-lavender/30 border border-violet-100 p-8 rounded-3xl hover:shadow-lg hover:bg-pastel-lavender/50 transition-all duration-300">
                                    <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between mb-4">
                                        <div>
                                            <h3 class="text-xl font-extrabold text-text-heading">Intern IT Business
                                                Analyst</h3>
                                            <h4 class="text-vibrant-purple font-bold text-lg mt-1">NOVAON TECH</h4>
                                        </div>
                                        <span
                                            class="px-3 py-1 bg-white rounded-lg text-xs font-bold text-purple-700 shadow-sm mt-2 sm:mt-0 inline-block text-center whitespace-nowrap">Apr
                                            2024 - July 2024</span>
                                    </div>
                                    <ul
                                        class="list-disc list-outside ml-4 space-y-2 text-text-main text-sm marker:text-vibrant-purple">
                                        <li>Responsible for business analysis for ERP and HRM software solutions.</li>
                                        <li>Gathered &amp; analyzed requirements from key departments (Business
                                            Development, Marketing).</li>
                                        <li>Developed &amp; documented <span class="font-bold text-text-heading">BRD and
                                                FRS</span>, enabling development/testing teams.</li>
                                        <li>Collaborated with designers to create mockups &amp; prototypes.</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="relative group" data-aos="fade-up" data-aos-delay="300">
                                <div
                                    class="absolute -left-[58px] top-6 size-5 bg-white rounded-full border-4 border-orange-400 shadow-md z-10 group-hover:scale-125 transition-transform">
                                </div>
                                <div
                                    class="bg-pastel-peach/30 border border-orange-100 p-8 rounded-3xl hover:shadow-lg hover:bg-pastel-peach/50 transition-all duration-300">
                                    <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between mb-4">
                                        <div>
                                            <h3 class="text-xl font-extrabold text-text-heading">Mock Project Analyst
                                            </h3>
                                            <h4 class="text-orange-500 font-bold text-lg mt-1">Hai Lua Academy</h4>
                                        </div>
                                        <span
                                            class="px-3 py-1 bg-white rounded-lg text-xs font-bold text-orange-700 shadow-sm mt-2 sm:mt-0 inline-block text-center whitespace-nowrap">Dec
                                            2023 - Feb 2024</span>
                                    </div>
                                    <ul
                                        class="list-disc list-outside ml-4 space-y-2 text-text-main text-sm marker:text-orange-500">
                                        <li>Developed digital transformation project for Hai Lua Breakfast and Cafe.
                                        </li>
                                        <li>Analyzed and constructed BACCM, User Stories, and Process/Data models.</li>
                                        <li>Designed UX/UI aligned with customer needs using Figma.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layout-container flex flex-col w-full py-20 bg-white/50 backdrop-blur-sm relative z-10"
                id="projects">
                <div class="px-4 md:px-10 lg:px-40 flex flex-1 justify-center">
                    <div class="layout-content-container flex flex-col max-w-[1100px] flex-1" data-aos="fade-up">
                        <div class="flex flex-col items-center gap-2 mb-16 text-center">
                            <span
                                class="text-vibrant-purple font-bold tracking-widest uppercase text-sm">Portfolio</span>
                            <h2 class="text-text-heading text-3xl md:text-4xl font-extrabold">Featured Projects</h2>
                            <div class="w-16 h-1.5 bg-pastel-lavender rounded-full mt-2"></div>
                        </div>
                        <div class="mb-20">
                            <h3 class="text-vibrant-teal font-bold text-lg mb-6 flex items-center gap-2">
                                <span
                                    class="p-1 bg-teal-100 rounded text-vibrant-teal material-symbols-outlined text-sm">terminal</span>
                                Technical / Professional
                            </h3>
                            <div class="bg-white rounded-3xl shadow-xl shadow-slate-200 overflow-hidden border border-slate-100 flex flex-col lg:flex-row"
                                data-aos="fade-up" data-aos-delay="100">
                                <div class="lg:w-7/12 h-[300px] lg:h-auto bg-slate-100 relative group overflow-hidden">
                                    <div class="w-full h-full bg-cover bg-center transition-transform duration-700 group-hover:scale-105"
                                        style="background-image: url('img/Screenshot_40.png');">
                                    </div>
                                    <div class="absolute inset-0 bg-vibrant-blue/20 mix-blend-overlay"></div>
                                </div>
                                <div class="lg:w-5/12 p-8 lg:p-12 flex flex-col justify-center">
                                    <span
                                        class="text-xs font-bold text-vibrant-purple uppercase tracking-wider mb-2">Team
                                        Leader</span>
                                    <h3 class="text-text-heading text-2xl font-extrabold mb-4">Flower E-commerce
                                        Platform</h3>
                                    <p class="text-text-main text-sm leading-relaxed mb-6">
                                        Designed system architecture &amp; prioritized features across full SDLC.
                                        Delivered a full-featured admin dashboard with real-time revenue analytics.
                                        Built a custom order system and integrated multi-payment gateways (VNPay).
                                    </p>
                                    <div class="flex flex-wrap gap-2 mb-8">
                                        <span
                                            class="px-3 py-1 bg-pastel-sky text-sky-800 rounded-md text-xs font-bold font-mono">Java
                                            Spring Boot</span>
                                        <span
                                            class="px-3 py-1 bg-pastel-sky text-sky-800 rounded-md text-xs font-bold font-mono">MySQL</span>
                                        <span
                                            class="px-3 py-1 bg-pastel-sky text-sky-800 rounded-md text-xs font-bold font-mono">JSP/Servlet</span>
                                        <span
                                            class="px-3 py-1 bg-pastel-sky text-sky-800 rounded-md text-xs font-bold font-mono">REST
                                            APIs</span>
                                    </div>
                                    <div class="flex gap-4">
                                        <a aria-label="Open Link"
                                            class="text-text-heading hover:text-vibrant-teal transition-colors"
                                            href="#"><span class="material-symbols-outlined">open_in_new</span></a>
                                        <a aria-label="View Code"
                                            class="text-text-heading hover:text-vibrant-teal transition-colors"
                                            href="#"><span class="material-symbols-outlined">code</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <h3 class="text-vibrant-purple font-bold text-lg mb-6 flex items-center gap-2">
                                <span
                                    class="p-1 bg-violet-100 rounded text-vibrant-purple material-symbols-outlined text-sm">diversity_3</span>
                                Social / Leadership
                            </h3>
                            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                                <a href="https://www.facebook.com/HolaBusFPTU.CSKH" target="_blank"
                                    class="bg-pastel-mint/30 rounded-3xl p-8 border border-emerald-100 hover:-translate-y-2 hover:shadow-xl hover:shadow-emerald-100 transition-all duration-300 flex flex-col group cursor-pointer"
                                    data-aos="fade-up" data-aos-delay="200">
                                    <div class="flex justify-between items-start mb-6">
                                        <div class="p-3 bg-emerald-100 rounded-2xl text-emerald-600">
                                            <span class="material-symbols-outlined text-3xl">directions_bus</span>
                                        </div>
                                        <div class="text-emerald-400 group-hover:text-emerald-600 transition-colors">
                                            <span class="material-symbols-outlined">open_in_new</span>
                                        </div>
                                    </div>
                                    <h4 class="text-text-heading text-xl font-extrabold mb-2">Hola Bus Project</h4>
                                    <p class="text-text-main text-sm mb-6 flex-grow">
                                        Managed a team of 15 members to build a reliable contract car service for FPTU
                                        students. Designed an online ticket booking website attracting 5,000 monthly
                                        visits.
                                    </p>
                                    <span
                                        class="inline-block px-3 py-1 bg-white text-emerald-700 text-xs font-bold rounded-lg self-start">Project
                                        Manager</span>
                                </a>
                                <a href="https://www.facebook.com/socialinnovationlaunch" target="_blank"
                                    class="bg-pastel-lavender/30 rounded-3xl p-8 border border-violet-100 hover:-translate-y-2 hover:shadow-xl hover:shadow-violet-100 transition-all duration-300 flex flex-col group cursor-pointer"
                                    data-aos="fade-up" data-aos-delay="300">
                                    <div class="flex justify-between items-start mb-6">
                                        <div class="p-3 bg-violet-100 rounded-2xl text-violet-600">
                                            <span class="material-symbols-outlined text-3xl">rocket_launch</span>
                                        </div>
                                        <div class="text-violet-400 group-hover:text-violet-600 transition-colors">
                                            <span class="material-symbols-outlined">open_in_new</span>
                                        </div>
                                    </div>
                                    <h4 class="text-text-heading text-xl font-extrabold mb-2">Social Innovation Launch
                                        (SiL 2024)</h4>
                                    <p class="text-text-main text-sm mb-6 flex-grow">
                                        Led 11 specialists for a startup competition. Developed partnerships with 28
                                        partners including Brands Vietnam, YBOX.VN. Drafted and verified contracts.
                                    </p>
                                    <span
                                        class="inline-block px-3 py-1 bg-white text-violet-700 text-xs font-bold rounded-lg self-start">Deputy
                                        Head</span>
                                </a>
                                <a href="https://www.facebook.com/FU.Business" target="_blank"
                                    class="bg-pastel-rose/30 rounded-3xl p-8 border border-rose-100 hover:-translate-y-2 hover:shadow-xl hover:shadow-rose-100 transition-all duration-300 flex flex-col group cursor-pointer"
                                    data-aos="fade-up" data-aos-delay="400">
                                    <div class="flex justify-between items-start mb-6">
                                        <div class="p-3 bg-rose-100 rounded-2xl text-rose-500">
                                            <span class="material-symbols-outlined text-3xl">groups</span>
                                        </div>
                                        <div class="text-rose-400 group-hover:text-rose-600 transition-colors">
                                            <span class="material-symbols-outlined">open_in_new</span>
                                        </div>
                                    </div>
                                    <h4 class="text-text-heading text-xl font-extrabold mb-2">FPTU Business Club</h4>
                                    <p class="text-text-main text-sm mb-6 flex-grow">
                                        Managed club personnel (200 members). Organized projects attracting 1,000+
                                        students. Worked directly with VPS Securities, Cốc Cốc, Abera.
                                    </p>
                                    <span
                                        class="inline-block px-3 py-1 bg-white text-rose-700 text-xs font-bold rounded-lg self-start">Vice
                                        President</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layout-container flex flex-col w-full py-20 relative z-10">
                <div class="px-4 md:px-10 lg:px-40 flex flex-1 justify-center">
                    <div class="layout-content-container flex flex-col max-w-[900px] flex-1 text-center"
                        data-aos="fade-up">
                        <div class="flex flex-col items-center gap-2 mb-12">
                            <span class="text-orange-500 font-bold tracking-widest uppercase text-sm">Awards</span>
                            <h2 class="text-text-heading text-3xl font-extrabold">Achievements &amp; Recognitions</h2>
                            <div class="w-16 h-1.5 bg-pastel-peach rounded-full mt-2"></div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                            <div class="group relative" data-aos="zoom-in" data-aos-delay="100">
                                <div
                                    class="absolute inset-0 bg-pastel-peach rounded-full blur-xl opacity-50 group-hover:opacity-80 transition-opacity">
                                </div>
                                <div
                                    class="relative bg-white border-2 border-orange-100 rounded-3xl p-8 hover:border-orange-300 transition-colors h-full flex flex-col items-center justify-center">
                                    <div
                                        class="size-16 rounded-full bg-orange-50 flex items-center justify-center mb-4 text-orange-500">
                                        <span class="material-symbols-outlined text-3xl">emoji_events</span>
                                    </div>
                                    <div class="text-4xl font-black text-orange-400 mb-2">Top 6</div>
                                    <p class="text-text-main text-sm font-medium">Social Innovation Launch (SIL) student
                                        startup competition</p>
                                </div>
                            </div>
                            <div class="group relative">
                                <div
                                    class="absolute inset-0 bg-pastel-sky rounded-full blur-xl opacity-50 group-hover:opacity-80 transition-opacity">
                                </div>
                                <div
                                    class="relative bg-white border-2 border-sky-100 rounded-3xl p-8 hover:border-sky-300 transition-colors h-full flex flex-col items-center justify-center">
                                    <div
                                        class="size-16 rounded-full bg-sky-50 flex items-center justify-center mb-4 text-sky-500">
                                        <span class="material-symbols-outlined text-3xl">military_tech</span>
                                    </div>
                                    <div class="text-4xl font-black text-sky-400 mb-2">Top 7</div>
                                    <p class="text-text-main text-sm font-medium">"Launch To Leader" competition</p>
                                </div>
                            </div>
                            <div class="group relative" data-aos="zoom-in" data-aos-delay="300">
                                <div
                                    class="absolute inset-0 bg-pastel-mint rounded-full blur-xl opacity-50 group-hover:opacity-80 transition-opacity">
                                </div>
                                <div
                                    class="relative bg-white border-2 border-emerald-100 rounded-3xl p-8 hover:border-emerald-300 transition-colors h-full flex flex-col items-center justify-center">
                                    <div
                                        class="size-16 rounded-full bg-emerald-50 flex items-center justify-center mb-4 text-emerald-500">
                                        <span class="material-symbols-outlined text-3xl">stars</span>
                                    </div>
                                    <div class="text-4xl font-black text-emerald-400 mb-2">Best</div>
                                    <p class="text-text-main text-sm font-medium">Debate Team - 11th Gen Recruitment
                                        FPTU Business Club</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layout-container flex flex-col w-full py-24 bg-white/50 backdrop-blur-sm relative z-10"
                id="contact">
                <div class="px-4 md:px-10 lg:px-40 flex flex-1 justify-center">
                    <div class="layout-content-container flex flex-col max-w-[1000px] flex-1" data-aos="fade-up">
                        <div
                            class="bg-white rounded-[40px] shadow-2xl shadow-slate-200 border border-slate-100 overflow-hidden flex flex-col md:flex-row">
                            <div
                                class="p-10 md:p-14 md:w-1/2 bg-gradient-to-br from-slate-50 to-white flex flex-col justify-center">
                                <span class="text-vibrant-teal font-bold tracking-widest uppercase text-sm mb-2">04.
                                    What's Next?</span>
                                <h2 class="text-4xl md:text-5xl font-extrabold text-text-heading mb-6">Get In Touch</h2>
                                <p class="text-text-main text-lg leading-relaxed mb-8">
                                    I am currently looking for new opportunities in Fintech and Business Analysis.
                                    Whether you have a question or just want to say hi, I'll try my best to get back to
                                    you!
                                </p>
                                <div class="space-y-4">
                                    <div
                                        class="flex items-center gap-4 text-text-main hover:text-vibrant-teal transition-colors">
                                        <div class="bg-teal-50 p-2 rounded-full text-vibrant-teal"><span
                                                class="material-symbols-outlined text-xl">mail</span></div>
                                        <span class="font-medium">kimkyvu2004hd@gmail.com</span>
                                    </div>
                                    <div
                                        class="flex items-center gap-4 text-text-main hover:text-vibrant-teal transition-colors">
                                        <div class="bg-teal-50 p-2 rounded-full text-vibrant-teal"><span
                                                class="material-symbols-outlined text-xl">call</span></div>
                                        <span class="font-medium">(+84) 929 343 780</span>
                                    </div>
                                    <div
                                        class="flex items-center gap-4 text-text-main hover:text-vibrant-teal transition-colors">
                                        <div class="bg-teal-50 p-2 rounded-full text-vibrant-teal"><span
                                                class="material-symbols-outlined text-xl">location_on</span></div>
                                        <span class="font-medium">Ha Noi, Viet Nam</span>
                                    </div>
                                </div>
                            </div>
                            <div class="p-10 md:p-14 md:w-1/2 bg-slate-50">
                                <form action="contact" method="post" class="flex flex-col gap-5">
                                    <% String message=(String) session.getAttribute("message"); String
                                        messageType=(String) session.getAttribute("messageType"); if (message !=null) {
                                        String colorClass="text-green-600 bg-green-50 border-green-200" ; if
                                        ("error".equals(messageType)) {
                                        colorClass="text-red-600 bg-red-50 border-red-200" ; } %>
                                        <div class="p-4 rounded-xl border <%= colorClass %> mb-2">
                                            <%= message %>
                                        </div>
                                        <% session.removeAttribute("message"); session.removeAttribute("messageType"); }
                                            %>
                                            <div class="flex flex-col gap-2">
                                                <label
                                                    class="text-sm font-bold text-text-heading uppercase tracking-wide">Name</label>
                                                <input
                                                    class="bg-white border border-slate-200 rounded-xl p-3 text-text-heading focus:border-vibrant-teal focus:ring-2 focus:ring-teal-100 focus:outline-none transition-all shadow-sm"
                                                    placeholder="Your name" type="text" name="name" required />
                                            </div>
                                            <div class="flex flex-col gap-2">
                                                <label
                                                    class="text-sm font-bold text-text-heading uppercase tracking-wide">Email</label>
                                                <input
                                                    class="bg-white border border-slate-200 rounded-xl p-3 text-text-heading focus:border-vibrant-teal focus:ring-2 focus:ring-teal-100 focus:outline-none transition-all shadow-sm"
                                                    placeholder="email@example.com" type="email" name="email"
                                                    required />
                                            </div>
                                            <div class="flex flex-col gap-2">
                                                <label
                                                    class="text-sm font-bold text-text-heading uppercase tracking-wide">Message</label>
                                                <textarea
                                                    class="bg-white border border-slate-200 rounded-xl p-3 text-text-heading focus:border-vibrant-teal focus:ring-2 focus:ring-teal-100 focus:outline-none transition-all shadow-sm"
                                                    placeholder="Say hello..." rows="4" name="message"
                                                    required></textarea>
                                            </div>
                                            <button
                                                class="mt-4 bg-vibrant-teal text-white font-bold py-3 rounded-xl hover:bg-teal-600 hover:shadow-lg transition-all"
                                                type="submit">
                                                Send Message
                                            </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="footer.jsp" />

        </div>

        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init({
                duration: 800,
                once: true,
                offset: 50
            });
        </script>
        <!-- Admin Access FAB -->
        <a href="login.jsp"
            class="fixed bottom-6 right-6 z-50 w-14 h-14 bg-slate-900 text-white rounded-full shadow-lg hover:bg-black hover:scale-110 hover:shadow-xl transition-all duration-300 group flex items-center justify-center"
            title="Go to Admin Portal">
            <span class="material-symbols-outlined text-2xl group-hover:rotate-12 transition-transform">brush</span>
        </a>
    </body>

    </html>