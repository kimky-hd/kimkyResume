document.addEventListener("DOMContentLoaded", () => {
    const overlay = document.getElementById("intro-overlay");
    const spanHi = document.getElementById("intro-hi");
    const spanName = document.getElementById("intro-name");
    const h2Job = document.getElementById("intro-job");

    // Debugging
    console.log("Intro script loaded");

    // Ensure overlay is visible (CSS handles this now, but we keep this for safety)
    if (overlay) {
        // overlay.style.display = "flex"; // Already set in CSS to avoid flash
        console.log("Intro initialized");
    } else {
        console.error("Intro overlay not found!");
        return;
    }

    document.body.style.overflow = "hidden"; // Prevent scrolling

    // SAFETY MECHANISM: Force hide overlay after 5 seconds
    // This solves the issue where the animation might get stuck on production due to race conditions
    setTimeout(() => {
        if (overlay && overlay.style.display !== "none") {
            console.warn("Intro animation timed out. Forcing finish.");
            finishIntro();
        }
    }, 5000); // 5 seconds safety net

    // Text Content
    const strHi = "Hi, I'm ";
    const strName = "KimKy Vu";
    const strJob = "IT Business Analyst.";

    // Logic Counters
    let i = 0;
    let j = 0;
    let k = 0;

    // Start Sequence
    setTimeout(typeHi, 500);

    // 1. FAST: "Hi, I'm "
    function typeHi() {
        spanHi.classList.add("typing-cursor");
        if (i < strHi.length) {
            spanHi.textContent += strHi.charAt(i);
            i++;
            setTimeout(typeHi, 40); // Fast speed (40ms)
        } else {
            spanHi.classList.remove("typing-cursor");
            setTimeout(typeName, 200); // Short pause
        }
    }

    // 2. MEDIUM: "KimKy Vu"
    function typeName() {
        spanName.classList.add("typing-cursor");
        // Ensure the cursor inherits the gradient text color or reset to black? 
        // The blinking cursor usually takes the text color. 
        // Since parent has gradient class, it might be tricky, but let's accept default behavior.

        if (j < strName.length) {
            spanName.textContent += strName.charAt(j);
            j++;
            setTimeout(typeName, 100); // Medium speed (100ms)
        } else {
            spanName.classList.remove("typing-cursor");
            setTimeout(typeJob, 400); // Longer pause
        }
    }

    // 3. SLOW: "IT Business Analyst."
    function typeJob() {
        h2Job.classList.add("typing-cursor");
        if (k < strJob.length) {
            h2Job.textContent += strJob.charAt(k);
            k++;
            setTimeout(typeJob, 150); // Slow speed (150ms)
        } else {
            // Finished
            setTimeout(finishIntro, 1500); // Wait 1.5s to read
        }
    }

    function finishIntro() {
        overlay.classList.add("intro-exit");
        document.body.style.overflow = "";
        setTimeout(() => {
            overlay.style.display = "none";
        }, 1500);
    }
});
