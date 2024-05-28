/**
 * 
 */
function toggleSidebar(event) {
            event.stopPropagation(); // 이벤트 버블링 방지
            var sidebar = document.getElementById("sidebar");
            sidebar.classList.toggle("active");
        }

function closeSidebar(event) {
    var sidebar = document.getElementById("sidebar");
    if (!sidebar.contains(event.target) && sidebar.classList.contains("active")) {
        sidebar.classList.remove("active");
    }
}