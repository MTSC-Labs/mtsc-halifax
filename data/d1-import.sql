-- D1 Import: Generated from MySQL dump
-- Events: camelCase -> snake_case mapping
-- Prayers: camelCase -> snake_case mapping

INSERT INTO events (id, title, url, content, event_date, is_featured, created_at, updated_at) VALUES
(12, 'Day of the Seafarer', 'day-of-the-seafarer', '<div data-html-block="true" data-html-content="&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;
    &lt;title&gt;Day of the Seafarer - Mission to Seafarers Halifax&lt;/title&gt;
    &lt;style&gt;
        /* --- Modern, Scoped CSS --- */
        :root {
            --mts-primary: #0f3b5c; /* Deep Maritime Blue */
            --mts-secondary: #0ea5e9; /* Ocean Blue */
            --mts-text: #334155; /* Dark Slate */
            --mts-bg-light: #f8fafc; /* Very Light Slate */
            --mts-frame-bg: #ffffff; /* White frames */
            --mts-border: #e2e8f0;
        }

        /* Fixes width calculations globally so padding doesn''t break mobile view */
        *, *::before, *::after {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            overflow-x: hidden; /* Prevents accidental horizontal scrolling */
        }

        .mts-seafarer-container {
            max-width: 1100px;
            margin: 0 auto;
            font-family: ''Inter'', ''Segoe UI'', Roboto, Helvetica, Arial, sans-serif;
            color: var(--mts-text);
            line-height: 1.7;
            padding: 20px 15px;
        }

        /* Typography */
        .mts-seafarer-container h1 {
            color: var(--mts-primary);
            font-size: 2.5rem;
            font-weight: 800;
            margin-bottom: 1rem;
            text-align: center;
        }

        .mts-seafarer-container h2 {
            color: var(--mts-primary);
            font-size: 2rem;
            font-weight: 700;
            margin-top: 3.5rem;
            margin-bottom: 1.5rem;
            padding-bottom: 10px;
            border-bottom: 3px solid var(--mts-secondary);
            display: inline-block;
        }

        .mts-seafarer-container h3 {
            color: var(--mts-secondary);
            font-size: 1.3rem;
            font-weight: 600;
            margin-top: 2rem;
            margin-bottom: 1rem;
        }

        .mts-seafarer-container p {
            margin-bottom: 1.2rem;
            font-size: 1.05rem;
        }

        /* Banner Images (Full width) */
        .mts-banner-img {
            width: 100%;
            height: auto;
            border-radius: 12px;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1);
            margin: 20px 0 30px 0;
            display: block;
        }

        /* --- PERFECTLY EVEN GRID GALLERY --- */
        .mts-perfect-gallery {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 24px;
            margin: 30px 0;
        }

        /* Uniform Frames for Photos */
        .mts-photo-frame {
            background-color: var(--mts-frame-bg);
            border: 1px solid var(--mts-border);
            border-radius: 12px;
            padding: 15px;
            height: 280px; /* Forces every box to be the exact same height */
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .mts-photo-frame:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
            border-color: var(--mts-secondary);
        }

        /* Ensures Image is fully visible, never cropped */
        .mts-photo-frame img {
            max-width: 100%;
            max-height: 100%;
            width: auto;
            height: auto;
            object-fit: contain; /* Prevents cropping */
            border-radius: 4px;
        }

        /* Intro Box */
        .mts-intro-box {
            background-color: var(--mts-bg-light);
            border: 1px solid var(--mts-border);
            border-radius: 12px;
            padding: 30px;
            margin-bottom: 40px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.02);
        }

        .mts-intro-box h3 {
            margin-top: 0;
        }

        /* Stylized Blockquotes */
        .mts-quote {
            background: #ffffff;
            border-left: 6px solid var(--mts-secondary);
            border-radius: 0 12px 12px 0;
            padding: 25px 30px;
            margin: 35px 0;
            font-style: italic;
            font-size: 1.1rem;
            color: #4b5563;
            box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05);
            position: relative;
        }

        .mts-quote-author {
            display: block;
            margin-top: 15px;
            font-weight: 700;
            font-style: normal;
            color: var(--mts-primary);
            font-size: 0.95rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* Divider */
        .mts-divider {
            height: 1px;
            background: #cbd5e1;
            border: none;
            margin: 60px 0;
        }

        /* =========================================
           COMPLETELY NEW MOBILE APP-STYLE FEED DESIGN
           ========================================= */
        @media (max-width: 768px) {
            
            /* Standardize container padding so text doesn''t shrink */
            .mts-seafarer-container {
                padding: 20px; 
            }

            .mts-seafarer-container h1 {
                font-size: 2.2rem;
            }

            .mts-seafarer-container h2 {
                font-size: 1.6rem;
            }

            /* Uses Negative Margins to force the Intro Box to the screen edge */
            .mts-intro-box {
                width: calc(100% + 40px);
                margin-left: -20px;
                margin-right: -20px;
                border-radius: 0;
                border-left: none;
                border-right: none;
                padding: 30px 20px; /* Keeps internal text padded properly */
            }

            /* Forces banner images to the screen edge naturally */
            .mts-banner-img {
                width: calc(100% + 40px);
                margin-left: -20px;
                margin-right: -20px;
                border-radius: 0;
                box-shadow: none;
            }

            /* Fixes quotes spacing */
            .mts-quote {
                padding: 20px 20px 20px 30px;
                font-size: 1rem;
                margin: 25px 0;
            }

            .mts-quote::before {
                font-size: 3.5rem;
                top: -10px;
                left: 5px;
            }

            /* 1 IMAGE AT A TIME (1fr) &amp; FULL WIDTH naturally */
            .mts-perfect-gallery {
                grid-template-columns: 1fr;
                gap: 8px; /* Slight gap between stacked photos */
                width: calc(100% + 40px); /* Break out to screen edges */
                margin-left: -20px;
                margin-right: -20px;
                margin-top: 20px;
                margin-bottom: 20px;
            }

            /* Strip away the border/padding styling */
            .mts-photo-frame {
                height: auto;
                padding: 0;
                border: none;
                border-radius: 0;
                box-shadow: none;
            }

            .mts-photo-frame:hover {
                transform: none;
                box-shadow: none;
            }

            /* Override restrictions to let images flow edge to edge */
            .mts-photo-frame img {
                width: 100%;
                height: auto;
                max-width: none;
                max-height: none;
                border-radius: 0;
                object-fit: cover;
            }
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;div class=&quot;mts-seafarer-container&quot;&gt;

    &lt;!-- Introduction Section --&gt;
    &lt;h1&gt;Day of the Seafarer – 25 June&lt;/h1&gt;
    
    &lt;div class=&quot;mts-intro-box&quot;&gt;
        &lt;p&gt;&lt;strong&gt;25 June of each year is the “Day of the Seafarer”&lt;/strong&gt;, recognizing the invaluable contribution seafarers make to international trade and the world economy, often at great personal cost to themselves and their families.&lt;/p&gt;
        
        &lt;h3&gt;IMO &amp; The Mission to Seafarers Halifax&lt;/h3&gt;
        &lt;p&gt;The Mission to Seafarers Halifax joins the International Maritime Organization (IMO) in the yearly observance of the Day of the Seafarer. This international campaign of IMO pays tribute to over 1.5 million seafarers worldwide for their unique and all-too-often overlooked contribution to the well-being of people and economies participating and benefitting from international trade.&lt;/p&gt;
        
        &lt;p&gt;For several years, we are joined in our celebration by the Filipino-Canadian friends of the Mission who prepared Filipino food treats. During the Covid-19 pandemic, Tim Horton’s donuts were delivered to ships or given to seafarers who come to the Mission on shore leave.&lt;/p&gt;
    &lt;/div&gt;

    &lt;!-- 2025 Section --&gt;
    &lt;h2&gt;International Day of the Seafarer 2025&lt;/h2&gt;
    &lt;p&gt;This year’s campaign — &lt;strong&gt;‘My Harassment-Free Ship’&lt;/strong&gt;, a bold initiative to promote a culture of respect and zero tolerance for bullying and harassment (IMO).&lt;/p&gt;
    
    &lt;img src=&quot;/uploads/Day-of-the-Seafater-PB-2025_banner_medium-1536x736-1.jpg&quot; alt=&quot;Day of the Seafarer 2025 Banner&quot; class=&quot;mts-banner-img&quot;&gt;

    &lt;p&gt;The annual luncheon on Seafarers’ Day includes dine-in meals for visiting seafarers and take-out lunches for regular patrons. The Filipino-Canadian Friends of the Mission prepares Filipino home-cooked food.&lt;/p&gt;

    &lt;!-- Perfectly Even Gallery Grid --&gt;
    &lt;div class=&quot;mts-perfect-gallery&quot;&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/A-grand-team-effort-1152x1536.jpg&quot; alt=&quot;Grand team effort&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/International-Day-of-the-Seafarer-1536x1152.jpg&quot; alt=&quot;Day of the Seafarer Celebration&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Picton-family-with-Helen-and-Elizabeth-225x300.jpg&quot; alt=&quot;Picton family with Helen and Elizabeth&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Aurora-Jack-and-John-300x225.jpg&quot; alt=&quot;Aurora Jack and John&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Volunteer-John-Attersley-with-Chris-Hall-225x300.jpg&quot; alt=&quot;Volunteer John Attersley with Chris Hall&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Nadia-and-Joanne-1024x768.jpg&quot; alt=&quot;Nadia and Joanne&quot;&gt;&lt;/div&gt;
    &lt;/div&gt;

    &lt;hr class=&quot;mts-divider&quot;&gt;

    &lt;!-- 2024 Section --&gt;
    &lt;h2&gt;International Day of the Seafarer 2024&lt;/h2&gt;
    &lt;p&gt;The 2024 campaign centred around &lt;strong&gt;safety tips at sea&lt;/strong&gt;. It is important that those who work out at sea also understand the importance of their contribution to making the maritime sector a safer workplace.&lt;/p&gt;
    
    &lt;img src=&quot;/uploads/Day-of-Seafarers-768x512.jpg&quot; alt=&quot;Day of Seafarers 2024&quot; class=&quot;mts-banner-img&quot;&gt;

    &lt;p&gt;This year, the Mission to Seafarers Halifax along with our Filipino-Canadian friends, community partners, and volunteers celebrated the Day of the Seafarers with a hearty luncheon of Filipino dishes and sweets. Member of Parliament Andy Fillmore graced the celebration with his presence and delivered 2,000 Canada pins, which are given for free to seafarers as souvenirs.&lt;/p&gt;

    &lt;!-- Perfectly Even Gallery Grid --&gt;
    &lt;div class=&quot;mts-perfect-gallery&quot;&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/International-Day-of-the-Seafarer-MtS-Halifax-Fil-CAD-team-300x225.jpg&quot; alt=&quot;MtS Halifax Fil-CAD team&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Patricia-Susan-Elizabeth-Jack-Andy-.-Maria-Colm-Jim-Helen-768x1024.jpg&quot; alt=&quot;Group Photo&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Maria-and-Elizabeth-serves-Andy-with-Susan-and-Will-300x225.jpg&quot; alt=&quot;Maria and Elizabeth serving Andy&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Maria-Elizabeth-Andy-and-Helen-768x1024.jpg&quot; alt=&quot;Maria, Elizabeth, Andy, and Helen&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Captain-Colm-Stockdale-Jim-and-Andy-Fillmore-768x1024.jpg&quot; alt=&quot;Captain Colm Stockdale, Jim, and Andy Fillmore&quot;&gt;&lt;/div&gt;
    &lt;/div&gt;

    &lt;hr class=&quot;mts-divider&quot;&gt;

    &lt;!-- 2023 Section --&gt;
    &lt;h2&gt;International Day of the Seafarer 2023&lt;/h2&gt;
    &lt;p&gt;Per IMO, the 2023 campaign looks at seafarers’ contribution to protecting the marine environment in line with the World Maritime theme &lt;strong&gt;“MARPOL at 50 – Our commitment goes on.”&lt;/strong&gt;&lt;/p&gt;

    &lt;img src=&quot;/uploads/DOTS-2023_inside-pic_medium-768x576.jpg&quot; alt=&quot;Day of the Seafarer 2023&quot; class=&quot;mts-banner-img&quot;&gt;

    &lt;h3&gt;Protecting the Marine Environment: View from the Sea&lt;/h3&gt;

    &lt;div class=&quot;mts-quote&quot;&gt;
        “As a seafarer I not only think – I also act. I protect the ocean. I am sure the first thing every seafarer has is love of the ocean. How can you spend so much time at sea without loving it? Of great importance on this work, is to see all the wildlife are kept well. It is part of our work. Garbage recycling and eco speed are priorities. Every trip I love implementing values to my crew about environmental protection.”
        &lt;span class=&quot;mts-quote-author&quot;&gt;– Captain Meir Dizraeli, ZIM SHEKOU&lt;/span&gt;
    &lt;/div&gt;
    
    &lt;!-- Perfectly Even Gallery Grid --&gt;
    &lt;div class=&quot;mts-perfect-gallery&quot;&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Zim-Shekou.jpg&quot; alt=&quot;Zim Shekou&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Zim-Shekou2-768x576.jpg&quot; alt=&quot;Zim Shekou Photo 2&quot;&gt;&lt;/div&gt;
    &lt;/div&gt;

    &lt;div class=&quot;mts-quote&quot;&gt;
        “One of the best thing I experienced working at sea was seeing its beauty in all parts of the world. It is my privilege to share this existence. We are all connected to sea and we are not the only one who benefit from it so we must preserve and protect it for future generations.”
        &lt;span class=&quot;mts-quote-author&quot;&gt;– Capt. Leo-mar T. Reginaldo, M.V. NYK METEOR&lt;/span&gt;
    &lt;/div&gt;

    &lt;!-- Perfectly Even Gallery Grid --&gt;
    &lt;div class=&quot;mts-perfect-gallery&quot;&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/NYK-Meteor2-300x225.jpg&quot; alt=&quot;NYK Meteor Photo 1&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/NYK-Meteor3-300x225.jpg&quot; alt=&quot;NYK Meteor Photo 2&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/NYK-Meteor-300x200.jpg&quot; alt=&quot;NYK Meteor Photo 3&quot;&gt;&lt;/div&gt;
    &lt;/div&gt;

    &lt;h3&gt;X-press Irazu&lt;/h3&gt;
    
    &lt;!-- Perfectly Even Gallery Grid --&gt;
    &lt;div class=&quot;mts-perfect-gallery&quot;&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/X-press-Irazu-768x346.jpg&quot; alt=&quot;X-press Irazu Photo 1&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/X-press-Irazu2-768x346.jpg&quot; alt=&quot;X-press Irazu Photo 2&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/X-press-Irazu3.jpg&quot; alt=&quot;X-press Irazu Photo 3&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/X-press-Irazu4-768x346.jpg&quot; alt=&quot;X-press Irazu Photo 4&quot;&gt;&lt;/div&gt;
    &lt;/div&gt;

    &lt;hr class=&quot;mts-divider&quot;&gt;

    &lt;!-- 2022 Section --&gt;
    &lt;h2&gt;International Seafarers Day 2022&lt;/h2&gt;
    &lt;p&gt;Together with our Filipino-Canadian friends, a luncheon was hosted on 25 June 2022 at the Mission centre. With mostly Filipino dishes prepared by our Fil-Can friends, packed lunches were sold to patrons and guests and funds raised were donated to the Mission. Seafarers who visited the Mission were treated to free lunch.&lt;/p&gt;

    &lt;!-- Perfectly Even Gallery Grid --&gt;
    &lt;div class=&quot;mts-perfect-gallery&quot;&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/International-Day-of-the-Seafarer-June-24th-celebration-1-768x576.jpg&quot; alt=&quot;2022 Celebration&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/IMG_5154-768x576.jpg&quot; alt=&quot;2022 Luncheon Photo 1&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/IMG_5143-768x576.jpg&quot; alt=&quot;2022 Luncheon Photo 2&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/IMG_5140-768x576.jpg&quot; alt=&quot;2022 Luncheon Photo 3&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/IMG_5132-768x576.jpg&quot; alt=&quot;2022 Luncheon Photo 4&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mts-photo-frame&quot;&gt;&lt;img src=&quot;/uploads/Atlantic-Sky-crew-members-with-Helen-Elizabeth-and-Ronaldo-768x604.jpg&quot; alt=&quot;Atlantic Sky crew members with Helen, Elizabeth, and Ronaldo&quot;&gt;&lt;/div&gt;
    &lt;/div&gt;

&lt;/div&gt;

&lt;/body&gt;
&lt;/html&gt;" style="margin: 1.5rem 0px;"></div><p></p>', NULL, 1, '2026-05-25 22:00:00', '2026-06-16 11:44:06'),
(13, 'Sea Sunday', 'sea-sunday', '<div data-html-block="true" data-html-content="&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;
    &lt;title&gt;Sea Sunday - Mission to Seafarers Halifax&lt;/title&gt;
    &lt;link href=&quot;https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&amp;display=swap&quot; rel=&quot;stylesheet&quot;&gt;
    &lt;style&gt;
        /* --- Modern, Scoped CSS --- */
        :root {
            --mts-navy: #0a2540;       /* Deep Ocean Night */
            --mts-blue: #0284c7;       /* Maritime Blue */
            --mts-light-blue: #e0f2fe; /* Sea Foam */
            --mts-accent: #f59e0b;     /* Beacon/Sun Gold */
            --mts-text: #334155;       /* Dark Slate */
            --mts-text-light: #64748b; /* Light Slate */
            --mts-bg: #f8fafc;         /* Off-white background */
            --mts-white: #ffffff;
            --mts-border: #e2e8f0;
        }

        body {
            background-color: var(--mts-bg);
            margin: 0;
            padding: 0;
        }

        .mts-seasunday-wrapper {
            font-family: ''Inter'', sans-serif;
            color: var(--mts-text);
            line-height: 1.7;
        }

        /* --- HERO SECTION --- */
        .mts-hero {
            background: linear-gradient(135deg, var(--mts-navy) 0%, var(--mts-blue) 100%);
            color: var(--mts-white);
            padding: 80px 20px 60px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        /* Subtle CSS Wave decoration at the bottom of hero */
        .mts-hero::after {
            content: '''';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 40px;
            background: var(--mts-bg);
            clip-path: polygon(100% 0%, 0% 100%, 100% 100%);
        }

        .mts-hero-content {
            max-width: 800px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        /* FIXED: Made the title Gold, added a shadow, and forced the color to override your theme */
        .mts-hero h1 {
            font-size: 3.5rem;
            font-weight: 800;
            margin: 0 0 20px 0;
            letter-spacing: -1px;
            color: var(--mts-accent) !important; 
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.4);
        }

        .mts-hero p {
            font-size: 1.15rem;
            color: var(--mts-light-blue);
            margin-bottom: 1.5rem;
        }

        .mts-hero strong {
            color: var(--mts-white);
        }

        /* --- MAIN CONTAINER --- */
        .mts-container {
            max-width: 1100px;
            margin: -30px auto 40px;
            padding: 0 20px;
            position: relative;
            z-index: 10;
        }

        /* --- YEARLY CARDS GRID --- */
        .mts-year-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }

        .mts-year-card {
            background-color: var(--mts-white);
            border-radius: 16px;
            padding: 40px 30px 30px;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05);
            border: 1px solid var(--mts-border);
            position: relative;
            display: flex;
            flex-direction: column;
            transition: all 0.3s ease;
        }

        .mts-year-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 40px -10px rgba(2, 132, 199, 0.15);
            border-color: var(--mts-light-blue);
        }

        /* The Year Badge */
        .mts-year-badge {
            position: absolute;
            top: -20px;
            left: 30px;
            background-color: var(--mts-accent);
            color: var(--mts-navy);
            font-weight: 800;
            font-size: 1.2rem;
            padding: 8px 20px;
            border-radius: 30px;
            box-shadow: 0 4px 10px rgba(245, 158, 11, 0.3);
        }

        .mts-year-card p {
            flex-grow: 1;
            font-size: 1rem;
            color: var(--mts-text-light);
            margin: 10px 0 25px;
        }

        /* --- BUTTONS --- */
        .mts-btn-group {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .mts-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background-color: var(--mts-light-blue);
            color: var(--mts-navy) !important;
            text-decoration: none;
            padding: 14px 20px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 0.95rem;
            transition: all 0.2s ease;
        }

        .mts-btn:hover {
            background-color: var(--mts-blue);
            color: var(--mts-white) !important;
        }

        .mts-btn-primary {
            background-color: var(--mts-navy);
            color: var(--mts-white) !important;
        }

        .mts-btn-icon {
            margin-right: 10px;
            font-size: 1.2rem;
        }

        /* --- VIDEO SECTION --- */
        .mts-media-section {
            margin-top: 80px;
            text-align: center;
        }

        .mts-media-section h2 {
            color: var(--mts-navy);
            font-size: 2rem;
            font-weight: 800;
            margin-bottom: 10px;
        }

        .mts-media-section &gt; p {
            color: var(--mts-text-light);
            margin-bottom: 40px;
            font-size: 1.1rem;
        }

        .mts-video-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
            gap: 30px;
        }

        .mts-video-wrapper {
            position: relative;
            padding-bottom: 56.25%;
            height: 0;
            overflow: hidden;
            border-radius: 16px;
            background-color: #0f172a;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.15);
        }

        .mts-video-wrapper iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: 0;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .mts-hero h1 { font-size: 2.5rem; }
            .mts-video-grid { grid-template-columns: 1fr; }
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;div class=&quot;mts-seasunday-wrapper&quot;&gt;

    &lt;!-- Elevated Hero/Intro Section --&gt;
    &lt;header class=&quot;mts-hero&quot;&gt;
        &lt;div class=&quot;mts-hero-content&quot;&gt;
            &lt;h1&gt;Sea Sunday&lt;/h1&gt;
            &lt;p&gt;The Mission to Seafarers Halifax joins Christian churches and faith or religious organizations worldwide in observing &lt;strong&gt;Sea Sunday&lt;/strong&gt;.&lt;/p&gt;
            &lt;p&gt;Sea Sunday is a day when seafarers are remembered and prayers are offered for them and their families. It is also an occasion to advocate for the welfare of seafarers – the essential workers – and thank them for their hard work and sacrifice for themselves, their families, and the people who benefit from the seafarers’ significant contribution to global trade and commerce.&lt;/p&gt;
        &lt;/div&gt;
    &lt;/header&gt;

    &lt;main class=&quot;mts-container&quot;&gt;
        &lt;!-- Modern Card Grid for Yearly Resources --&gt;
        &lt;div class=&quot;mts-year-grid&quot;&gt;

            &lt;!-- 2025 Card --&gt;
            &lt;div class=&quot;mts-year-card&quot;&gt;
                &lt;div class=&quot;mts-year-badge&quot;&gt;2025&lt;/div&gt;
                &lt;p&gt;Once again this year, Sea Sunday honors the courageous men and women who keep the global economy moving. Together, let’s continue to pray, give thanks, and raise vital funds to support seafarers facing tough and often lonely conditions.&lt;/p&gt;
                &lt;div class=&quot;mts-btn-group&quot;&gt;
                    &lt;a href=&quot;https://www.missiontoseafarers.org/sea-sunday#:~:text=Sea%20Sunday%2C%2013%20July%202025&amp;text=Sea%20Sunday%20is%20a%20special,months%20away%20from%20their%20&quot; target=&quot;_blank&quot; class=&quot;mts-btn mts-btn-primary&quot;&gt;
                        &lt;span class=&quot;mts-btn-icon&quot;&gt;⚓&lt;/span&gt; Celebration Details
                    &lt;/a&gt;
                &lt;/div&gt;
            &lt;/div&gt;

            &lt;!-- 2024 Card --&gt;
            &lt;div class=&quot;mts-year-card&quot;&gt;
                &lt;div class=&quot;mts-year-badge&quot;&gt;2024&lt;/div&gt;
                &lt;p&gt;Sea Sunday is on 14 July 2024. This Day is an opportunity to remember and say prayers for all the brave men and women who work at sea to make sure people get what they need. It is a celebration and opportunity to raise funds for essential support services.&lt;/p&gt;
                &lt;div class=&quot;mts-btn-group&quot;&gt;
                    &lt;a href=&quot;https://www.missiontoseafarers.org/wp-content/uploads/51819-MtS-Sea-Sunday-Why-we-Celebrate-Sea-Sunday-Card-A5.pdf&quot; target=&quot;_blank&quot; class=&quot;mts-btn&quot;&gt;
                        &lt;span class=&quot;mts-btn-icon&quot;&gt;📄&lt;/span&gt; Why We Celebrate
                    &lt;/a&gt;
                    &lt;a href=&quot;https://www.missiontoseafarers.org/wp-content/uploads/51819-Sea-Sunday-2024-Kids-activity-sheet-stg1-AW.pdf&quot; target=&quot;_blank&quot; class=&quot;mts-btn&quot;&gt;
                        &lt;span class=&quot;mts-btn-icon&quot;&gt;🎨&lt;/span&gt; Kids Activity Sheet
                    &lt;/a&gt;
                &lt;/div&gt;
            &lt;/div&gt;

            &lt;!-- 2022 Card --&gt;
            &lt;div class=&quot;mts-year-card&quot;&gt;
                &lt;div class=&quot;mts-year-badge&quot;&gt;2022&lt;/div&gt;
                &lt;p&gt;For more information about the Mission and to support Sea Sunday 2022, please view our official flyers and download the provided sermon notes to share with your congregation.&lt;/p&gt;
                &lt;div class=&quot;mts-btn-group&quot;&gt;
                    &lt;a href=&quot;https://www.missiontoseafarershalifax.ca/wp-content/uploads/2022/04/Sea-Sunday-general-leaflet-1.pdf&quot; target=&quot;_blank&quot; class=&quot;mts-btn&quot;&gt;
                        &lt;span class=&quot;mts-btn-icon&quot;&gt;📄&lt;/span&gt; Download Flyer
                    &lt;/a&gt;
                    &lt;a href=&quot;https://www.missiontoseafarershalifax.ca/wp-content/uploads/2022/04/Sea-Sunday-2022-sermon-notes.pdf&quot; target=&quot;_blank&quot; class=&quot;mts-btn&quot;&gt;
                        &lt;span class=&quot;mts-btn-icon&quot;&gt;📖&lt;/span&gt; Sermon Notes
                    &lt;/a&gt;
                &lt;/div&gt;
            &lt;/div&gt;

            &lt;!-- 2021 Card --&gt;
            &lt;div class=&quot;mts-year-card&quot;&gt;
                &lt;div class=&quot;mts-year-badge&quot;&gt;2021&lt;/div&gt;
                &lt;p&gt;Learn how to support the Mission to Seafarers and discover fun ways to get the younger generation involved through our interactive activity sheets.&lt;/p&gt;
                &lt;div class=&quot;mts-btn-group&quot;&gt;
                    &lt;a href=&quot;https://www.missiontoseafarershalifax.ca/wp-content/uploads/2021/09/Sea-Sunday-How-to-Support.pdf&quot; target=&quot;_blank&quot; class=&quot;mts-btn&quot;&gt;
                        &lt;span class=&quot;mts-btn-icon&quot;&gt;📄&lt;/span&gt; How to Support
                    &lt;/a&gt;
                    &lt;a href=&quot;https://www.missiontoseafarershalifax.ca/wp-content/uploads/2021/09/Sea-Sunday-Kids-activity.pdf&quot; target=&quot;_blank&quot; class=&quot;mts-btn&quot;&gt;
                        &lt;span class=&quot;mts-btn-icon&quot;&gt;🎨&lt;/span&gt; Kids Activity Sheet
                    &lt;/a&gt;
                &lt;/div&gt;
            &lt;/div&gt;

        &lt;/div&gt;

        &lt;!-- Video Gallery Section --&gt;
        &lt;section class=&quot;mts-media-section&quot;&gt;
            &lt;h2&gt;Watch Our Sea Sunday Broadcasts&lt;/h2&gt;
            &lt;p&gt;Stories and prayers from the Mission to Seafarers around the globe.&lt;/p&gt;
            
            &lt;div class=&quot;mts-video-grid&quot;&gt;
                &lt;!-- Vimeo Embed --&gt;
                &lt;div class=&quot;mts-video-wrapper&quot;&gt;
                    &lt;iframe src=&quot;https://player.vimeo.com/video/567415716?h=0&amp;title=0&amp;byline=0&amp;portrait=0&quot; allow=&quot;autoplay; fullscreen; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;
                &lt;/div&gt;

                &lt;!-- YouTube Embed 
                     Note: Please paste your youtube embed link between the empty src=&quot;&quot; quotes below. --&gt;
                &lt;div class=&quot;mts-video-wrapper&quot;&gt;
                    &lt;iframe width=&quot;1536&quot; height=&quot;864&quot; src=&quot;https://www.youtube.com/embed/09oZMPqv8QA&quot; title=&quot;The Mission to Seafarers - Sea Sunday 2021&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share&quot; referrerpolicy=&quot;strict-origin-when-cross-origin&quot; allowfullscreen&gt;&lt;/iframe&gt;
                &lt;/div&gt;
            &lt;/div&gt;
        &lt;/section&gt;
    &lt;/main&gt;

&lt;/div&gt;

&lt;/body&gt;
&lt;/html&gt;" style="margin: 1.5rem 0px;"></div><p></p>', NULL, 1, '2026-05-25 21:00:00', '2026-04-02 14:22:06');

INSERT INTO events (id, title, url, content, event_date, is_featured, created_at, updated_at) VALUES
(14, 'Take-Out Luncheon', 'take-out-luncheon', '<div data-html-block="true" data-html-content="&lt;style&gt;
    /* Scoped CSS to prevent interfering with your website''s main theme */
    .m2s-luncheon-wrapper {
        max-width: 1000px;
        margin: 0 auto;
        font-family: Arial, Helvetica, sans-serif;
        color: #333;
        line-height: 1.6;
    }

    .m2s-luncheon-wrapper p {
        margin-bottom: 15px;
        font-size: 16px;
    }

    .m2s-intro {
        text-align: center;
        margin-bottom: 40px;
        padding-bottom: 20px;
        border-bottom: 2px solid #005b96;
    }

    .m2s-intro img {
        max-width: 100%;
        height: auto;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
    }

    .m2s-event-card {
        background: #ffffff;
        border: 1px solid #e0e0e0;
        border-radius: 10px;
        padding: 30px;
        margin-bottom: 40px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
    }

    .m2s-event-card h2 {
        color: #005b96;
        margin-top: 0;
        margin-bottom: 15px;
        font-size: 24px;
        border-bottom: 1px solid #eee;
        padding-bottom: 10px;
    }

    /* CSS Grid for beautiful, responsive image galleries */
    .m2s-gallery {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
        margin-top: 25px;
    }

    .m2s-figure {
        margin: 0;
        overflow: hidden;
        border-radius: 8px;
        background: #f9f9f9;
        border: 1px solid #eee;
        display: flex;
        flex-direction: column;
    }

    .m2s-figure img {
        width: 100%;
        height: 250px;
        object-fit: cover;
        transition: transform 0.3s ease;
    }

    .m2s-figure:hover img {
        transform: scale(1.05);
    }

    .m2s-figcaption {
        padding: 12px;
        text-align: center;
        font-size: 14px;
        color: #555;
        font-style: italic;
        background: #f9f9f9;
        flex-grow: 1;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    /* Announcement Box for Upcoming Luncheons */
    .m2s-announcement-card {
        background: linear-gradient(135deg, #f0f7fc 0%, #ffffff 100%);
        border: 2px solid #005b96;
        border-radius: 12px;
        padding: 24px;
        margin-bottom: 40px;
        box-shadow: 0 6px 20px rgba(0, 91, 150, 0.12);
        text-align: center;
    }

    .m2s-announcement-title {
        color: #005b96;
        margin-top: 0;
        margin-bottom: 16px;
        font-size: 26px;
        font-weight: bold;
    }

    .m2s-announcement-list {
        list-style-type: disc;
        display: inline-block;
        text-align: left;
        margin: 0 auto;
        padding-left: 24px;
        font-size: 18px;
        line-height: 1.8;
        color: #333;
    }

    .m2s-announcement-list li {
        margin-bottom: 6px;
    }

    .m2s-announcement-list li:last-child {
        margin-bottom: 0;
    }

    .m2s-poster-container {
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
        margin: 0 auto;
        width: 100%;
    }

    .m2s-poster-img {
        display: block;
        margin: 0 auto;
        max-width: 100%;
        max-height: 850px;
        width: auto;
        height: auto;
        border-radius: 10px;
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.12);
        border: 1px solid #d0e2ec;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .m2s-poster-img:hover {
        transform: scale(1.01);
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.18);
    }

    .m2s-ticket-action {
        margin-top: 30px;
        margin-bottom: 25px;
        text-align: center;
    }

    .m2s-ticket-btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        background: #E05A2B;
        color: #ffffff !important;
        text-decoration: none;
        font-size: 18px;
        font-weight: bold;
        padding: 14px 36px;
        border-radius: 50px;
        box-shadow: 0 4px 15px rgba(224, 90, 43, 0.35);
        transition: all 0.3s ease;
    }

    .m2s-ticket-btn:hover {
        background: #c94d23;
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(224, 90, 43, 0.45);
        color: #ffffff !important;
    }

    .m2s-instructions-card {
        margin-top: 20px;
        background: #ffffff;
        border: 1px solid #d0e2ec;
        border-radius: 10px;
        padding: 22px 28px;
        text-align: left;
        max-width: 700px;
        margin-left: auto;
        margin-right: auto;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.04);
    }

    .m2s-instructions-title {
        color: #005b96;
        margin-top: 0;
        margin-bottom: 12px;
        font-size: 20px;
        font-weight: bold;
        text-align: center;
        border-bottom: 1px solid #eee;
        padding-bottom: 8px;
    }

    .m2s-instructions-list {
        margin: 0;
        padding-left: 22px;
        color: #333;
        font-size: 15px;
        line-height: 1.7;
    }

    .m2s-instructions-list li {
        margin-bottom: 8px;
    }

    .m2s-instructions-note {
        margin-top: 14px;
        margin-bottom: 0;
        font-size: 14px;
        color: #555;
        background: #f8fbfd;
        padding: 10px 14px;
        border-radius: 6px;
        border-left: 3px solid #005b96;
    }
&lt;/style&gt;

&lt;div class=&quot;m2s-luncheon-wrapper&quot;&gt;

    &lt;!-- Announcement Box for Fall Luncheon (October 29, 2026) --&gt;
    &lt;div class=&quot;m2s-announcement-card&quot; style=&quot;background: linear-gradient(135deg, #f0f7fc 0%, #ffffff 100%); border: 2px solid #005b96; border-radius: 12px; padding: 24px; margin-bottom: 40px; box-shadow: 0 6px 20px rgba(0, 91, 150, 0.12); text-align: center;&quot;&gt;
        &lt;!-- Fall Luncheon Poster --&gt;
        &lt;div class=&quot;m2s-poster-container&quot;&gt;
            &lt;img src=&quot;/uploads/1a082809-27f9-46ef-96c2-efb6bfde2f9e.webp&quot;
                alt=&quot;Fall Luncheon October 29th 2026 Poster&quot;
                class=&quot;m2s-poster-img&quot;&gt;
        &lt;/div&gt;

        &lt;!-- Purchase Event Ticket Button --&gt;
        &lt;div class=&quot;m2s-ticket-action&quot; style=&quot;margin-top: 30px; margin-bottom: 25px; text-align: center;&quot;&gt;
            &lt;a href=&quot;/WaystoGive?tickets=true&amp;event=takeout-luncheons#tickets&quot; 
               class=&quot;m2s-ticket-btn&quot; 
               target=&quot;_blank&quot; 
               rel=&quot;noopener noreferrer&quot;
               style=&quot;display: inline-flex; align-items: center; justify-content: center; gap: 10px; background: #E05A2B; color: #ffffff !important; text-decoration: none; font-size: 18px; font-weight: bold; padding: 14px 36px; border-radius: 50px; box-shadow: 0 4px 15px rgba(224, 90, 43, 0.35); transition: all 0.3s ease;&quot;&gt;
               &lt;svg width=&quot;20&quot; height=&quot;20&quot; viewBox=&quot;0 0 24 24&quot; fill=&quot;none&quot; stroke=&quot;currentColor&quot; stroke-width=&quot;2.5&quot; stroke-linecap=&quot;round&quot; stroke-linejoin=&quot;round&quot; style=&quot;display: inline-block; vertical-align: middle; margin-right: 6px;&quot;&gt;&lt;rect x=&quot;2&quot; y=&quot;6&quot; width=&quot;20&quot; height=&quot;12&quot; rx=&quot;2&quot;/&gt;&lt;path d=&quot;M9 6v12M15 6v12&quot;/&gt;&lt;/svg&gt;Purchase Event Ticket
            &lt;/a&gt;
        &lt;/div&gt;

        &lt;!-- Instructions on How to Purchase a Luncheon Ticket --&gt;
        &lt;div class=&quot;m2s-instructions-card&quot; style=&quot;margin-top: 20px; background: #ffffff; border: 1px solid #d0e2ec; border-radius: 10px; padding: 22px 28px; text-align: left; max-width: 700px; margin-left: auto; margin-right: auto; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.04);&quot;&gt;
            
            
                &lt;p style=&quot;margin-bottom: 8px;&quot;&gt;For Online orders, click on the &lt;strong&gt;&quot;Purchase Event Ticket&quot;&lt;/strong&gt; button. Or call or email us.&lt;/p&gt;
               
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Introduction Section --&gt;
    &lt;div class=&quot;m2s-intro&quot;&gt;
        &lt;p&gt;With normality back after the global COVID 19 pandemic, we continue to offer take-out luncheons to raise
            funds and continue to keep in touch with our sponsors, patrons, friends, and the general public.&lt;/p&gt;
        &lt;p&gt;Thanks to a dedicated team of volunteers, the lunches are planned, produced, and delivered at scheduled
            pick-up times at the parking lot beside the Mission building.&lt;/p&gt;
        &lt;img src=&quot;/uploads/Luncheon-1024x771.jpg&quot;
            alt=&quot;Mission to Seafarers Take-out Luncheon&quot;&gt;
    &lt;/div&gt;

    &lt;!-- September BBQ 2026 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;September BBQ 2026&lt;/h2&gt;
        &lt;p&gt;Notwithstanding the torrential rain and strong winds, the Halifax Mission Luncheon Team proceeded with the cooking, preparation, and delivery of lunches for patrons and sponsors. This popular fundraising activity helps sustain the Halifax Mission''s quality and timely services for seafarers.&lt;/p&gt;
        &lt;p&gt;Thank You to the Luncheon Team: Grill master Norman, Kitchen Team Susan and Paul, Assembly and Delivery Team Carol, Charlene and Bud, and Cashier Joseph&lt;/p&gt;
        &lt;p&gt;Thank You to our luncheon sponsor: D.R. Brenton''s Fire Protection&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/773d31eb-c51a-43a4-a7d4-b0e047538e1b.webp&quot;
                    alt=&quot;September BBQ 2026&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/49ab5262-b3a1-488c-bb6e-e3997b2e15be.webp&quot;
                    alt=&quot;September BBQ 2026&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/dc0ab190-ab96-44f4-9271-ddbd77a70e93.webp&quot;
                    alt=&quot;September BBQ 2026&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/31ff7510-0f55-4fa8-9ff8-a01d179f0c4c.webp&quot;
                    alt=&quot;September BBQ 2026&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/97b87d4c-dd96-4466-886a-a4abaf54704f.webp&quot;
                    alt=&quot;September BBQ 2026&quot;&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Early Summer BBQ 2026 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;Early Summer BBQ 2026&lt;/h2&gt;
        &lt;p&gt;The first BBQ luncheon in May included a sumptuous meal of hamburger, potato salad, chips and dessert. Despite some drizzle, our Grill Master and production, assembly, and delivery teams (all Volunteers) contributed to the success of another monthly luncheon.&lt;/p&gt;
        &lt;p&gt;As always, our sincere appreciation for the support of our luncheon Sponsor, Halifax Grain Elevator, our Patrons, Volunteers, Guests and Friends.&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Luncheon%20May%2028%202026.jpg&quot;
                    alt=&quot;Early Summer BBQ 2026&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Luncheon%20May%2028%202026%202.jpg&quot;
                    alt=&quot;Early Summer BBQ 2026&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Luncheon%20May%2028%202026%203.jpg&quot;
                    alt=&quot;Early Summer BBQ 2026&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Luncheon%20May%2028%202026%204.jpg&quot;
                    alt=&quot;Early Summer BBQ 2026&quot;&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Spring Special 2026 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;Spring Special 2026&lt;/h2&gt;
        &lt;p&gt;Our 2026 monthly take-out luncheons kicked off in April with a delicious meal of sweet &amp;amp; sour meatballs, rice, veggies, roll &amp;amp; dessert.&lt;/p&gt;
        &lt;p&gt;THANK YOU to our luncheon sponsor, Logistec Stevedoring Inc., Patrons, and Volunteers. Your continued support always made out Luncheon fundraising event a tasteful success!&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Spring%20Luncheon%202026_1.jpg&quot;
                    alt=&quot;Spring Special 2026&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Spring%20Luncheon%202026_2.jpg&quot;
                    alt=&quot;Spring Special 2026&quot;&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- November Take-out 2025 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;November Take-out 2025&lt;/h2&gt;
        &lt;p&gt;Volunteers who made the production, assembly, and delivery of lunches made possible another successful
            fundraising take-out luncheon – the last for 2025.&lt;/p&gt;
        &lt;p&gt;Thank you, as always, to our Sponsor, donors, and patrons for their continued support so the Mission can
            deliver its key services for seafarer welfare.&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/2-1024x771.jpg&quot;
                    alt=&quot;November Take-out Luncheon&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/1-1157x1536.jpg&quot;
                    alt=&quot;November Take-out Luncheon&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/3-300x226.jpg&quot;
                    alt=&quot;November Take-out Luncheon&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/4-768x576.jpg&quot;
                    alt=&quot;Marriott volunteers&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;A BIG thanks to our Marriott volunteers who continue to share their
                    time and effort with us.&lt;/figcaption&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Fall Luncheon 2025 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;Fall Luncheon 2025&lt;/h2&gt;
        &lt;p&gt;From preparation to production and packaging of luncheon packs, the well-coordinated Teams smoothly delivered
            131 lunches (comprising roast ham, baked potato and beans, and dessert).&lt;/p&gt;
        &lt;p&gt;BIG THANKS to the Sponsor, patrons, and volunteers for another successful take-out lunch!&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Fall-luncheon-1-rotated.jpg&quot;
                    alt=&quot;Preparation Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Preparation Team&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Fall-luncheon-1-rotated.jpg&quot;
                    alt=&quot;Production Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Production Team&lt;/figcaption&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- End of Summer BBQ 2025 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;End of Summer BBQ 2025&lt;/h2&gt;
        &lt;p&gt;Responding to popular demand, the take-out luncheon last September 18th served 150 orders of beef and
            vegetarian burgers. As always, a BIG THANK YOU to our sponsor, patrons and Mission volunteers and staff.&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/image000001-2-300x225.jpg&quot;
                    alt=&quot;Grilling Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Grilling Team&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/image000000-1-300x225.jpg&quot;
                    alt=&quot;Production Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Production Team&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/image000000-300x225.jpg&quot;
                    alt=&quot;Assembly - Distribution Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Assembly &amp;amp; Distribution Team&lt;/figcaption&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Spring BBQ 2025 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;Spring BBQ 2025&lt;/h2&gt;
        &lt;p&gt;The Spring BBQ luncheon ended with over 150 lunches served.&lt;/p&gt;
        &lt;p&gt;BIG Thanks to the Sponsor and Patrons! Kudos to the volunteers who helped make the operation run smoothly.
        &lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Bud-James-and-Norman-710x1024.jpg&quot;
                    alt=&quot;Bud, James, Norman preparing the BBQ&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Bud, James, Norman preparing the BBQ&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Mike-Norman-and-James-768x999.jpg&quot;
                    alt=&quot;Grilling Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Grilling Team: Norman (Grill Master), James, Mike C. (Student Intern)
                &lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Susan-and-Aurora-May-BBQ-300x293.jpg&quot;
                    alt=&quot;Production Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Production Team: Susan and Aurora&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Aurora-Carol-Bud-package-with-care-and-love-768x877.jpg&quot;
                    alt=&quot;Assembly Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Assembly Team: Aurora, Carol, and Bud&lt;/figcaption&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Spring Luncheon 2025 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;Spring Luncheon 2025&lt;/h2&gt;
        &lt;p&gt;The first luncheon of 2025 starts with a sumptuous Spring (April) favourite meal of butter chicken, basmati
            rice, and naan bread.&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20250410_104633409_HDR-226x300.jpg&quot;
                    alt=&quot;Spring Luncheon Preparations&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20250410_104749464_HDR-226x300.jpg&quot;
                    alt=&quot;Spring Luncheon Preparations&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20250410_104715230_HDR-226x300.jpg&quot;
                    alt=&quot;Spring Luncheon Preparations&quot;&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Fall Luncheon 2024 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;Fall Luncheon 2024&lt;/h2&gt;
        &lt;p&gt;The production and assembly teams were busy preparing over 100 lunches (of roast ham, baked potatoes and
            baked beans) for our sponsors, patrons, and friends.&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Fall-1-300x226.jpg&quot;
                    alt=&quot;Production Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Production Team&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Fall-2-300x226.jpg&quot;
                    alt=&quot;Assembly Team&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Assembly Team&lt;/figcaption&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- End of Summer BBQ 2024 --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;End of Summer BBQ 2024&lt;/h2&gt;
        &lt;p&gt;Special THANK YOU to Andrew Boutilier, owner of Mary Brown’s Chicken, for donations of hamburger buns and
            single serve portions of ketchup and mustard. These items came from the Alma Crescent (Fairview) and Dentith
            Road (Spryfield) branches.&lt;/p&gt;
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20240919_144133-768x1020.jpg&quot;
                    alt=&quot;Barbecue Chef Norman&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Barbecue Chef Norman&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20240919_144133-1-768x1020.jpg&quot;
                    alt=&quot;Norman with Max assisting&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Norman with Max assisting&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20240919_144134-768x1020.jpg&quot;
                    alt=&quot;Susan and Aurora packing burgers&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Susan and Aurora packing burgers per order&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20240919_144133-2-768x1020.jpg&quot;
                    alt=&quot;Carol and Aurora packing luncheon bags&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Carol and Aurora packing luncheon bags&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20240919_144133-3-768x578.jpg&quot;
                    alt=&quot;Bud, Carol, Aurora, Max&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Bud, Carol, Aurora, Max&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IMG_20240919_144134-1-768x578.jpg&quot;
                    alt=&quot;Regular luncheon patrons&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Regular luncheon patrons – Sharon, Paul and Joy&lt;/figcaption&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

&lt;/div&gt;" style="margin: 1.5rem 0px;"></div><p></p>', '2026-10-29 00:00:00', 1, '2026-05-25 23:00:00', '2026-10-09 04:44:38'),
(15, 'Toast to Spring', 'toast-to-spring', '<div data-html-block="true" data-html-content="&lt;style&gt;
    /* Scoped CSS to prevent interfering with your website''s main theme */
    .m2s-auction-wrapper {
        max-width: 1000px;
        margin: 0 auto;
        font-family: Arial, Helvetica, sans-serif;
        color: #333;
        line-height: 1.6;
    }

    .m2s-auction-wrapper p {
        margin-bottom: 15px;
        font-size: 16px;
    }

    /* Event Card Base Styling */
    .m2s-auction-card {
        background: #ffffff;
        border: 1px solid #e0e0e0;
        border-radius: 10px;
        padding: 30px;
        margin-bottom: 40px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.05);
    }

    /* Special Highlight for the Upcoming 2026 Event */
    .m2s-upcoming-event {
        border-top: 5px solid #005b96;
        background: #f4f9fc; /* Very light blue background */
    }

    .m2s-auction-card h2 {
        color: #005b96;
        margin-top: 0;
        margin-bottom: 15px;
        font-size: 28px;
        border-bottom: 1px solid #ddd;
        padding-bottom: 10px;
    }
    
    .m2s-upcoming-date {
        font-size: 18px;
        font-weight: bold;
        color: #d9534f; /* Attention grabbing color for the date */
        margin-bottom: 10px;
    }

    .m2s-donation-callout {
        display: inline-block;
        background-color: #005b96;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
        font-weight: bold;
        margin-top: 10px;
    }

    /* Layout for the 2025 Recap */
    .m2s-recap-content {
        display: flex;
        flex-wrap: wrap;
        gap: 30px;
        align-items: flex-start;
    }

    .m2s-recap-text {
        flex: 1 1 400px;
    }

    .m2s-recap-image {
        flex: 1 1 400px;
        margin: 0;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }

    .m2s-recap-image img {
        width: 100%;
        height: auto;
        display: block;
        transition: transform 0.3s ease;
    }

    .m2s-recap-image:hover img {
        transform: scale(1.02);
    }
    
    .m2s-thank-you {
        font-size: 18px;
        font-weight: bold;
        color: #2b7a0b; /* Green tone for success/thanks */
        margin-top: 20px;
    }
&lt;/style&gt;

&lt;div class=&quot;m2s-auction-wrapper&quot;&gt;

    &lt;!-- UPCOMING: 2026 Toast to Spring Auction --&gt;
    &lt;div class=&quot;m2s-auction-card m2s-upcoming-event&quot;&gt;
        &lt;h2&gt;2026 Toast to Spring Auction&lt;/h2&gt;
        &lt;p class=&quot;m2s-upcoming-date&quot;&gt;📅 Scheduled: April 13-19, 2026&lt;/p&gt;
        &lt;p&gt;Mark your calendars! The highly anticipated 2026 Toast to Spring Auction is scheduled for mid-April. More exciting details will be announced soon.&lt;/p&gt;
        &lt;p&gt;&lt;strong&gt;We are now accepting donations of items for the auction.&lt;/strong&gt; Your generosity makes this event possible.&lt;/p&gt;
        &lt;div class=&quot;m2s-donation-callout&quot;&gt;
            Thank you for your continued support!
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- PAST RECAP: 2025 Toast to Spring Auction --&gt;
    &lt;div class=&quot;m2s-auction-card&quot;&gt;
        &lt;h2&gt;2025 Toast to Spring Auction&lt;/h2&gt;
        &lt;div class=&quot;m2s-recap-content&quot;&gt;
            
            &lt;div class=&quot;m2s-recap-text&quot;&gt;
                &lt;p&gt;This auction is a unique activity with bidders outbidding each other up to the last day, with the philanthropic intent of supporting the Mission in its operations to deliver quality services to seafarers.&lt;/p&gt;
                &lt;p&gt;A fair amount of money raised from this activity from April 23 to 29 goes a long way in supporting the operation of our Mission, particularly the free services we continuously provide and deliver to the seafarers.&lt;/p&gt;
                &lt;p class=&quot;m2s-thank-you&quot;&gt;🎉 Congratulations to all bid winners and a MASSIVE THANK YOU to all who supported this year’s online auction!&lt;/p&gt;
            &lt;/div&gt;

            &lt;figure class=&quot;m2s-recap-image&quot;&gt;
                &lt;img src=&quot;/uploads/Spring-Auction-1024x771.jpg&quot; alt=&quot;2025 Toast to Spring Auction Display&quot;&gt;
            &lt;/figure&gt;
            
        &lt;/div&gt;
    &lt;/div&gt;

&lt;/div&gt;" style="margin: 1.5rem 0px;"></div><p></p>', NULL, 1, '2026-05-25 20:00:00', '2026-06-16 11:47:33');

INSERT INTO events (id, title, url, content, event_date, is_featured, created_at, updated_at) VALUES
(16, 'MtS Golf Tournament', 'mts-golf-tournament', '<h3><span style="color: rgb(0, 20, 122);"><strong><mark data-color="#fafafa" style="background-color: rgb(250, 250, 250); color: inherit;">2026 MtS Halifax Golf Tournament</mark></strong></span></h3><div data-html-block="true" data-html-content="&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;
    &lt;title&gt;Golf Tournament - Mission to Seafarers&lt;/title&gt;
    &lt;style&gt;
        /* Scoped CSS to prevent interfering with your website''s main theme */
        
        /* Fixes width calculations globally so padding doesn''t break mobile view */
        *, *::before, *::after {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            overflow-x: hidden; /* Prevents accidental horizontal scrolling */
        }

        .m2s-golf-wrapper {
            max-width: 1000px;
            margin: 0 auto;
            font-family: Arial, Helvetica, sans-serif;
            color: #333;
            line-height: 1.6;
        }

        .m2s-golf-wrapper p {
            margin-bottom: 15px;
            font-size: 16px;
        }

        .m2s-event-card {
            background: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 10px;
            padding: 30px;
            margin-bottom: 40px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
        }

        .m2s-event-card h2 {
            color: #005b96;
            margin-top: 0;
            margin-bottom: 15px;
            font-size: 26px;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
        }

        /* Highlight box for tournament results */
        .m2s-winners-box {
            background: #f4f9fc;
            border-left: 5px solid #005b96;
            padding: 20px;
            border-radius: 5px;
            margin: 20px 0;
        }
        
        .m2s-winners-box h3 {
            margin-top: 0;
            color: #005b96;
            font-size: 18px;
            margin-bottom: 10px;
        }

        .m2s-winners-box ul {
            margin: 0;
            padding-left: 20px;
        }

        .m2s-winners-box li {
            margin-bottom: 8px;
        }

        .m2s-thank-you {
            font-weight: bold;
            color: #2b7a0b; /* Green tone for success/thanks */
            display: block;
        }

        /* CSS Grid for large image galleries */
        .m2s-gallery {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 15px;
            margin-top: 25px;
        }

        .m2s-figure {
            margin: 0;
            overflow: hidden;
            border-radius: 6px;
            background: #f9f9f9;
            border: 1px solid #eee;
            display: flex;
            flex-direction: column;
        }

        .m2s-figure img {
            width: 100%;
            height: 160px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .m2s-figure:hover img {
            transform: scale(1.05);
        }

        .m2s-figcaption {
            padding: 10px;
            text-align: center;
            font-size: 13px;
            color: #555;
            font-weight: bold;
            background: #f9f9f9;
            flex-grow: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* =========================================
           COMPLETELY NEW MOBILE APP-STYLE FEED DESIGN
           ========================================= */
        @media (max-width: 768px) {
            
            .m2s-golf-wrapper {
                padding: 0;
            }

            /* REMOVED PADDING HERE so images can stretch full width naturally */
            .m2s-event-card {
                border: none;
                border-radius: 0;
                box-shadow: none;
                margin-bottom: 0;
                padding: 40px 0px 20px; 
                border-bottom: 8px solid #eeeeee; 
            }
            .m2s-event-card:last-child {
                border-bottom: none;
            }

            /* Added side padding back to text elements only so content DOES NOT SHRINK */
            .m2s-event-card h2, 
            .m2s-event-card p,
            .m2s-thank-you {
                padding-left: 20px;
                padding-right: 20px;
            }

            .m2s-event-card h2 {
                font-size: 22px;
                border-bottom: none;
                padding-bottom: 0;
                line-height: 1.3;
            }

            /* Added side margin to the Winners box so it doesn''t touch phone edges */
            .m2s-winners-box {
                margin: 25px 20px;
            }

            /* 1 IMAGE AT A TIME (1fr) &amp; FULL WIDTH naturally */
            .m2s-gallery {
                grid-template-columns: 1fr; /* 1 column layout */
                gap: 8px; /* Slight gap between stacked photos */
                margin-top: 30px;
                width: 100%; 
            }

            /* Strip away styling so images bleed to edge */
            .m2s-figure {
                padding: 0;
                border: none;
                border-radius: 0;
                box-shadow: none;
                background: transparent;
            }
            .m2s-figure:hover img { 
                transform: none; 
            }

            /* Removed forced height so images display correctly edge to edge */
            .m2s-figure img {
                border-radius: 0;
                width: 100%;
                height: auto; 
                object-fit: cover; 
            }

            /* Adjust captions to align properly with text spacing */
            .m2s-figcaption {
                font-size: 14px;
                padding: 10px 20px 15px;
                background: transparent;
                text-align: left;
                justify-content: flex-start;
            }
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;div class=&quot;m2s-golf-wrapper&quot;&gt;

    &lt;!-- 2026 Tournament --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;27th MtS Halifax Golf Tournament (2026)&lt;/h2&gt;
        &lt;p&gt;In fair weather, twenty-seven teams of four golfers participated in the annual golf tournament this year.&lt;/p&gt;
        &lt;p&gt;Congratulations and thank you to all participants! The tournament ended with the following winners and prize recipients:&lt;/p&gt;
        
        &lt;div class=&quot;m2s-winners-box&quot;&gt;
            &lt;h3&gt;Tournament Results&lt;/h3&gt;
            &lt;ul&gt;
                &lt;li&gt;&lt;strong&gt;Lowest Score:&lt;/strong&gt; RelyOn Canada&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Longest Drive – Men:&lt;/strong&gt; David Barry&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Longest Drive – Women:&lt;/strong&gt; Sandra Attersley&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Closest to the Pin – Men:&lt;/strong&gt; Chris Naugle&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Most Honest Team:&lt;/strong&gt; The Mowat Mariners&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;50/50 Draw:&lt;/strong&gt; Ryan O''Hearn (A special thanks to Ryan O''Hearn for the generous donation of his winnings to the Mission!)&lt;/li&gt;
            &lt;/ul&gt;
        &lt;/div&gt;

        &lt;p class=&quot;m2s-thank-you&quot;&gt;Big Thanks also to our Mission volunteers who assisted in the administration of the event: Sandra and John Attersley, Captain Mike Montgomery, and Mike Cudjoe!&lt;/p&gt;
        &lt;p class=&quot;m2s-thank-you&quot;&gt;Special thanks to the management of Avon Valley Golf &amp; Country Club and the kitchen staff for their gracious hosting of the event!&lt;/p&gt;

        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/3c08e657-4598-4bd2-a34c-daebec2b4693.webp&quot; alt=&quot;ACL&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;ACL&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/b04b1aac-09af-448c-8d2b-f1154c528668.webp&quot; alt=&quot;AKZO NOBEL INTERNATIONAL PAINTS&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AKZO NOBEL INTERNATIONAL PAINTS&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/73ab2c5d-5224-4b38-9654-4605decab4cd.webp&quot; alt=&quot;AON 2&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AON 2&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/54992f5d-3292-4643-aa46-462f7cba2463.webp&quot; alt=&quot;AON TEAM A&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AON TEAM A&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/4f8ad37b-effb-4f9a-a975-361fb5dffab1.webp&quot; alt=&quot;APA A&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;APA A&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/c8668aac-6ba1-46a8-ad9d-ed51aa24f560.webp&quot; alt=&quot;APA B&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;APA B&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/a04d7147-9856-414f-8182-f64db4dd10cb.webp&quot; alt=&quot;Barry Grant KMS came closest to the hole in one&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Barry Grant KMS came closest to the hole in one&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/3a3b687b-59e2-4b10-8237-0654a9d85e6b.webp&quot; alt=&quot;Bespoke Global Logistics and Strategies&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Bespoke Global Logistics and Strategies&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/0e369d43-f064-4417-b47d-1fe40aeb8047.webp&quot; alt=&quot;Bluewater Group&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Bluewater Group&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/8c860cc9-5826-44a6-96a7-959b9a2d5b7b.webp&quot; alt=&quot;CSL&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;CSL&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/7bd39942-3b40-472e-ad0e-d8085e565637.webp&quot; alt=&quot;DSS PROTECTION&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;DSS PROTECTION&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/b5e67afb-4f16-415b-b46a-b569c6b74ed9.webp&quot; alt=&quot;HALIFAX EMPLOYEES ASSOCIATION&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;HALIFAX EMPLOYEES ASSOCIATION&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/58a69405-43dd-4e81-b771-9585f8b3334f.webp&quot; alt=&quot;HORIZON MARITIME SERVICES Team B&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;HORIZON MARITIME SERVICES Team B&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/ecb216a6-38ec-4448-af5e-889cfe63baa2.webp&quot; alt=&quot;HORIZON MARITIME SERVICES&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;HORIZON MARITIME SERVICES&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/270e0698-5cee-4b8f-8a30-595d775cd307.webp&quot; alt=&quot;HPA PSA TEAM&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;HPA PSA TEAM&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/5870a8ee-2111-4466-8649-0a6130172355.webp&quot; alt=&quot;INTERNATIONAL TELECOM&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;INTERNATIONAL TELECOM&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/372b0c5c-e3d8-4fd2-80ef-96d8a3c4c2cf.webp&quot; alt=&quot;Logistec A&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Logistec A&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/6a0e6380-1b28-4e87-a64d-80f522196724.webp&quot; alt=&quot;LOGISTEC B&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;LOGISTEC B&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/5e93c6b4-6fc8-4418-baf7-e0f0c2104696.webp&quot; alt=&quot;Master Mariners of Canada&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Master Mariners of Canada&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/54be88e8-f511-4381-b2a0-32c3566d1a4f.webp&quot; alt=&quot;Metcalf and Company&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Metcalf and Company&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/0ff87537-b83b-4c0b-ac7e-c2fc66601c90.webp&quot; alt=&quot;MWL&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;MWL&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/05387be0-a4a8-4aaa-b9e1-eaabfe5353d4.webp&quot; alt=&quot;Partner International Inc.&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Partner International Inc.&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/b3ff50f2-f435-4997-9376-2df7bc9f4755.webp&quot; alt=&quot;RelyOn Canada TEAM WITH THE LOWEST SCORE&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;RelyOn Canada TEAM WITH THE LOWEST SCORE&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/55d4e639-2b61-42a6-8c26-05c90a19b706.webp&quot; alt=&quot;Stewart McKelvey&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Stewart McKelvey&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/d307aeba-6976-40fa-8ad0-e312296a7e5c.webp&quot; alt=&quot;The Mowat Mariners&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;The Mowat Mariners&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/e3e5cb09-82ba-498c-b9a9-41b2ad41d88a.webp&quot; alt=&quot;UME&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;UME&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/6e963b37-4e90-414f-bcc2-34af8e206295.webp&quot; alt=&quot;Kitchen team extraordinaire - Roxanna, Jessica, Lydia, Relley&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Kitchen team extraordinaire - Roxanna, Jessica, Lydia, Relley&lt;/figcaption&gt;&lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- 2025 Tournament --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;26th MtS Halifax Golf Tournament (2025)&lt;/h2&gt;
        &lt;p&gt;Despite the dry weather, this year’s tournament was successfully conducted and played at the Avon Valley Golf and Country Club on September 9th. Twenty-nine (29) community teams participated to support the Mission’s work of promoting the welfare of seafarers.&lt;/p&gt;
        
        &lt;div class=&quot;m2s-winners-box&quot;&gt;
            &lt;h3&gt;Tournament Results&lt;/h3&gt;
            &lt;ul&gt;
                &lt;li&gt;&lt;strong&gt;Team with the lowest score:&lt;/strong&gt; Bluewater Group&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Closest to the Hole (Men):&lt;/strong&gt; Derek Kostal&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Closest to the Hole (Women):&lt;/strong&gt; Jennifer Holmes&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Longest Drive (Ladies):&lt;/strong&gt; Michelle Megannety&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Longest Drive (Men):&lt;/strong&gt; Gabe Hartlen (pink shirt with Logistec)&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Most Honest Team:&lt;/strong&gt; Ship Happens / Holmes Maritime Inc.&lt;/li&gt;
            &lt;/ul&gt;
        &lt;/div&gt;

        &lt;p class=&quot;m2s-thank-you&quot;&gt;A BIG BIG THANK YOU to all participants, donors, volunteers, and Avon management! We appreciate the moral, financial, and physical support in the smooth conduct of the tournament.&lt;/p&gt;

        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Halifax-Port-Authority-1.jpg&quot; alt=&quot;Halifax Port Authority 1&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Halifax Port Authority 1&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Halifax-Port-Authority-2.jpg&quot; alt=&quot;Halifax Port Authority 2&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Halifax Port Authority 2&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Horizon-Maritime.jpg&quot; alt=&quot;Horizon Maritime&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Horizon Maritime&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/IT-International-Telecom-300x225.jpg&quot; alt=&quot;IT International Telecom&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;IT International Telecom&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Stewart-Mckelvey-1-300x225.jpg&quot; alt=&quot;Stewart McKelvey&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Stewart McKelvey&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Sea1-Offshore-300x225.jpg&quot; alt=&quot;Sea1 Offshore&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Sea1 Offshore&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/RelyOn-Canada-Inc-300x225.jpg&quot; alt=&quot;RelyOn Canada Inc.&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;RelyOn Canada Inc.&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Mowat-Mariners-300x225.jpg&quot; alt=&quot;Mowat Mariners&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Mowat Mariners&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Metcalf-Company-300x225.jpg&quot; alt=&quot;Metcalf &amp; Company&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Metcalf &amp; Company&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Maritime-World-Logistecs.jpg&quot; alt=&quot;Maritime World Logistecs&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Maritime World Logistecs&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Logistec-Team-2.jpg&quot; alt=&quot;Logistec 2&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Logistec 2&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Logistec-Team-1.jpg&quot; alt=&quot;Logistec 1&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Logistec 1&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Leeway-Marine-2.jpg&quot; alt=&quot;Leeway Marine 2&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Leeway Marine 2&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Leeway-Marine-1.jpg&quot; alt=&quot;Leeway Marine 1&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Leeway Marine 1&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Kotug-Canada-Inc.jpg&quot; alt=&quot;Kotug Canada Inc.&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Kotug Canada Inc.&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Holmes-Maritime-Inc.jpg&quot; alt=&quot;Holmes Maritime Inc.&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Holmes Maritime Inc.&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/AON-PSA.jpg&quot; alt=&quot;AON &amp; PSA&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AON &amp; PSA&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/AON-2.jpg&quot; alt=&quot;AON 2&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AON 2&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/APA-1.jpg&quot; alt=&quot;APA 1&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;APA 1&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/APA-2.jpg&quot; alt=&quot;APA 2&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;APA 2&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Atlantic-Towing.jpg&quot; alt=&quot;Atlantic Towing&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Atlantic Towing&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Blue-Water-Group.jpg&quot; alt=&quot;Blue Water Group&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Blue Water Group&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/CSL.jpg&quot; alt=&quot;CSL&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;CSL&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Don-Brentons-Fire-Protection.jpg&quot; alt=&quot;Don Brenton''s Fire Protection&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Don Brenton''s Fire Protection&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/DSS-Protection-Services.jpg&quot; alt=&quot;DSS Protection Services&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;DSS Protection Services&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/GFL-Environmental-Services.jpg&quot; alt=&quot;GFL Environmental Services&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;GFL Environmental Services&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Halifax-Employers-Association.jpg&quot; alt=&quot;Halifax Employers Association&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Halifax Employers Association&lt;/figcaption&gt;&lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- 2024 Tournament --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;25th MtS Halifax Golf Tournament (2024)&lt;/h2&gt;
        &lt;p&gt;This year’s tournament at the Avon Valley Golf and Country Club was a very successful event. With 26 teams participating on a bright and sunny day, the players enjoyed their game and were pleased with the efficient conduct of the tournament. Expressions of pleasure were extended for the courtesy of the Club’s staff and the efficiency of the MtS volunteers.&lt;/p&gt;

        &lt;p&gt;To all the Participants, our Sponsors and Patrons, and MtS Volunteers: &lt;strong&gt;THANK YOU!&lt;/strong&gt; The golf tournament raised a substantial amount, essential to the Mission’s commitment to better serving the seafarers.&lt;/p&gt;

        &lt;div class=&quot;m2s-winners-box&quot;&gt;
            &lt;h3&gt;Congratulations to:&lt;/h3&gt;
            &lt;ul&gt;
                &lt;li&gt;&lt;strong&gt;Best Scoring Team:&lt;/strong&gt; Tie – Horizon Maritimes MEN &amp; Maritime World Logistics&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Men’s Closest to the Hole:&lt;/strong&gt; Wes McGuire&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Women’s Closest to the Hole:&lt;/strong&gt; Christina Garon&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Men’s Longest Drive:&lt;/strong&gt; Serge Dipenta&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Women’s Longest Drive:&lt;/strong&gt; Sandra Attersley&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Most Honest Team:&lt;/strong&gt; Halifax Employers Association&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Goat Ball:&lt;/strong&gt; BlueWater Group $170.00 ($320 raised)&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Hole in One Sponsor:&lt;/strong&gt; GFL Environmental Inc.&lt;/li&gt;
            &lt;/ul&gt;
        &lt;/div&gt;

        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/AON-Team-1-300x203.jpg&quot; alt=&quot;AON Team 1&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AON Team 1&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/AON-Team-2-300x191.jpg&quot; alt=&quot;AON Team 2&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AON Team 2&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/AON-Team-3-300x182.jpg&quot; alt=&quot;AON Team 3&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AON Team 3&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Atlantic-Constainer-Line-300x192.jpg&quot; alt=&quot;Atlantic Container Line&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Atlantic Container Line&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Atlantic-Pilotage-Authority-Team-A-300x195.jpg&quot; alt=&quot;Atlantic Pilotage Authority Team A&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Atlantic Pilotage Authority Team A&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Atlantic-Pilotage-Authority-Team-B-300x183.jpg&quot; alt=&quot;Atlantic Pilotage Authority Team B&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Atlantic Pilotage Authority Team B&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Atlantic-Towing-300x212.jpg&quot; alt=&quot;Atlantic Towing&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Atlantic Towing&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Blue-Water-Group-Edge-Marine-300x188.jpg&quot; alt=&quot;Blue Water Group / Edge Marine&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Blue Water Group / Edge Marine&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Don-Bretons-Fire-Protection-300x196.jpg&quot; alt=&quot;Don Breton’s Fire Protection&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Don Breton’s Fire Protection&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/DSS-Protection-300x199.jpg&quot; alt=&quot;DSS Protection&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;DSS Protection&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Halifax-Employers-Association-300x197.jpg&quot; alt=&quot;Halifax Employers Association&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Halifax Employers Association&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Halifax-Port-Authority-1-300x207.jpg&quot; alt=&quot;Halifax Port Authority (1)&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Halifax Port Authority (1)&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Halifax-Port-Authority-2-300x205.jpg&quot; alt=&quot;Halifax Port Authority (2)&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Halifax Port Authority (2)&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Horizon-Maritime-Services-Team-12-300x199.jpg&quot; alt=&quot;Horizon Maritime Services Teams 1 &amp; 2&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Horizon Maritime Services Teams 1 &amp; 2&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/KMS-Industries-300x198.jpg&quot; alt=&quot;KMS Industries&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;KMS Industries&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Leeway-Marine-1-300x225.jpg&quot; alt=&quot;Leeway Marine (1)&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Leeway Marine (1)&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Leeway-Marine-2-300x208.jpg&quot; alt=&quot;Leeway Marine (2)&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Leeway Marine (2)&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Logistec-Stevedoring-Team-A-300x202.jpg&quot; alt=&quot;Logistec Stevedoring Team A&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Logistec Stevedoring Team A&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Logistec-Stevedoring-Team-B-300x202.jpg&quot; alt=&quot;Logistec Stevedoring Team B&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Logistec Stevedoring Team B&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Maritime-World-Logistics-300x203.jpg&quot; alt=&quot;Maritime World Logistics&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Maritime World Logistics&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Metcalf-Company-300x197.jpg&quot; alt=&quot;Metcalf &amp; Company&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Metcalf &amp; Company&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Mowats-300x214.jpg&quot; alt=&quot;Mowats&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Mowats&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Partner-International-Inc-300x195.jpg&quot; alt=&quot;Partner International Inc.&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Partner International Inc.&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Relyon-Nutec-Canada-300x194.jpg&quot; alt=&quot;Relyon Nutec Canada&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Relyon Nutec Canada&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Sandra-Attersley-and-Don-Hatcher-300x180.jpg&quot; alt=&quot;Sandra Attersley and Don Hatcher&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Sandra Attersley and Don Hatcher&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/MtS-Haliax-Golf-Tournament-Volunteers-edited-300x300.jpg&quot; alt=&quot;MtS Halifax Golf Tournament Volunteers&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;MtS Halifax Golf Tournament Volunteers&lt;/figcaption&gt;&lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- 2023 Tournament --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;24th Mts Halifax Golf Tournament (2023)&lt;/h2&gt;
        &lt;p&gt;Twenty-eight community teams enjoyed a fun-filled day of golf at the lovely Avon Valley Golf &amp; Country Club. The course was pristine and the rain held off.&lt;/p&gt;

        &lt;div class=&quot;m2s-winners-box&quot;&gt;
            &lt;h3&gt;The winners of the day:&lt;/h3&gt;
            &lt;ul&gt;
                &lt;li&gt;&lt;strong&gt;Closest to the pin:&lt;/strong&gt; Ryan O’Hearn&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Closest to the hole (Ladies):&lt;/strong&gt; Denise McFarlane&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Longest drive (Men):&lt;/strong&gt; Charlie Doran&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Lowest scoring team:&lt;/strong&gt; Rely On Nutec Canada (first-time tournament participant)&lt;/li&gt;
            &lt;/ul&gt;
        &lt;/div&gt;

        &lt;p class=&quot;m2s-thank-you&quot;&gt;A Big THANK YOU and SHOUT OUT to volunteers, participants, sponsors, and community partners for their presence and generous contributions in cash and in kind. The golf tournament this year was a great success, and this is essential for the Mission’s ministry to seafarers who deliver 90% of everything to the shores of Halifax and Nova Scotia.&lt;/p&gt;

        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/AON-300x225.jpg&quot; alt=&quot;AON&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;AON&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/ATLANTIC-PILOTAGE-AUTHORITY-TEAM-b-300x225.jpg&quot; alt=&quot;Atlantic Pilotage Authority Team B&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;ATLANTIC PILOTAGE AUTHORITY TEAM B&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/ATLANTIC-PILOTAGE-AUTHORITY-300x225.jpg&quot; alt=&quot;Atlantic Pilotage Authority&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;ATLANTIC PILOTAGE AUTHORITY&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Atlantic-Towing-Ltd-300x225.jpg&quot; alt=&quot;Atlantic Towing Ltd&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;ATLANTIC TOWING LTD&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/ATSHIP-SERVICES-LTD-300x225.jpg&quot; alt=&quot;Atship Services Ltd&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;ATSHIP SERVICES LTD&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/BLUE-WATER-GROUP-EDGE-MARINE-300x225.jpg&quot; alt=&quot;Blue Water Group Edge Marine&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;BLUE WATER GROUP EDGE MARINE&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/CANADIAN-STEAMSHIP-LINES-300x225.jpg&quot; alt=&quot;Canadian Steamship Lines&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;CANADIAN STEAMSHIP LINES&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/CIMARE-300x225.jpg&quot; alt=&quot;CIMARE&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;CIMARE&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/CN-AND-PSA-300x225.jpg&quot; alt=&quot;CN AND PSA&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;CN AND PSA&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/DSS-GROUP-OF-COMPANIES-300x225.jpg&quot; alt=&quot;DSS Group of Companies&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;DSS GROUP OF COMPANIES&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/GFL-HOLE-IN-ONE-SPONSOR-THANK-YOU-300x225.jpg&quot; alt=&quot;GFL Hole In One Sponsor&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;GFL HOLE IN ONE SPONSOR&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/HALIFAX-PORT-AUTHORITY-300x225.jpg&quot; alt=&quot;Halifax Port Authority&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;HALIFAX PORT AUTHORITY&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/HEA-300x225.jpg&quot; alt=&quot;HEA&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;HEA&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/HORIZON-MARITIME-300x225.jpg&quot; alt=&quot;Horizon Maritime&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;HORIZON MARITIME&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/KMS-INDUSTRIES-300x225.jpg&quot; alt=&quot;KMS Industries&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;KMS INDUSTRIES&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LOGISTEC-STEVEDOING-300x225.jpg&quot; alt=&quot;Logistec Stevedoring&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;LOGISTEC STEVEDOING&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/MARITIME-WORLD-LOGISTICS-300x225.jpg&quot; alt=&quot;Maritime World Logistics&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;MARITIME WORLD LOGISTICS&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/METCALF-AND-COMPANY-300x225.jpg&quot; alt=&quot;Metcalf and Company&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;METCALF AND COMPANY&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/MOWATS-300x225.jpg&quot; alt=&quot;Mowats&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;MOWATS&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Partner-International-Inc-300x225.jpg&quot; alt=&quot;Partner International Inc&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;PARTNER INTERNATIONAL INC&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/RELY-ON-NUTEC-CANADA-300x225.jpg&quot; alt=&quot;Rely On Nutec Canada&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;RELY ON NUTEC CANADA&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/SPAR-MARINE-300x225.jpg&quot; alt=&quot;Spar Marine&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;SPAR MARINE&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/STEWARD-McKELVEY-300x225.jpg&quot; alt=&quot;Steward McKelvey&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;STEWARD McKELVEY&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/SVITZER-300x225.jpg&quot; alt=&quot;Svitzer&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;SVITZER&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/WAREHOUSE-TRANSPORT-GROUP-300x225.jpg&quot; alt=&quot;Warehouse Transport Group&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;WAREHOUSE TRANSPORT GROUP&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Michelle-Joan-Jim-and-Colm-volunteer-team-300x147.jpg&quot; alt=&quot;The volunteer team&quot;&gt;&lt;figcaption class=&quot;m2s-figcaption&quot;&gt;The volunteer team – Michelle, Joan, Jim, Colm – with the participants&lt;/figcaption&gt;&lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- 2022 Tournament --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;23rd MtS Halifax Golf Tournament (2022)&lt;/h2&gt;
        &lt;p&gt;After a two-year hiatus during the COVID-19 pandemic, 24 teams teed off at the Avon Valley Golf &amp; Country club. It was a day when the sun occasionally kept on peeking, the rain held its pour, and the bugs did not appear to distract the participants from playing, finishing, and enjoying their game. Many yarns and smiles were shared along with friendly hugs, libations, and a hearty meal at the end of the day.&lt;/p&gt;

        &lt;p class=&quot;m2s-thank-you&quot;&gt;Huge THANK YOU to the sponsors and patrons along with the organizers and participants! The 2022 Golf Tournament was a significant success especially in raising the necessary funds for the continued delivery of services to the hardworking seafarers who come to the Halifax ports.&lt;/p&gt;

        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/10-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/9-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/8-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/7-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/6-1-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/5-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/4-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/3-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/2-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/1-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/6-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/20-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/19-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/18-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/17-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/15-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/14-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/13-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/12-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/11-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/21-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/22-300x225.jpg&quot; alt=&quot;2022 Golf Tournament Highlights&quot;&gt;&lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

&lt;/div&gt;

&lt;/body&gt;
&lt;/html&gt;" style="margin: 1.5rem 0px;"></div><p></p>', '2026-09-01 00:00:00', 1, '2026-05-25 19:00:00', '2026-09-21 13:30:03');

INSERT INTO events (id, title, url, content, event_date, is_featured, created_at, updated_at) VALUES
(17, 'Car Rally', 'car-rally', '<div data-html-block="true" data-html-content="&lt;style&gt;
    /* Scoped CSS to prevent interfering with your website''s main theme */
    .m2s-rally-wrapper {
        max-width: 1000px;
        margin: 0 auto;
        font-family: Arial, Helvetica, sans-serif;
        color: #333;
        line-height: 1.6;
    }

    .m2s-rally-wrapper p {
        margin-bottom: 15px;
        font-size: 16px;
    }

    .m2s-event-card {
        background: #ffffff;
        border: 1px solid #e0e0e0;
        border-radius: 10px;
        padding: 30px;
        margin-bottom: 40px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.05);
    }

    .m2s-event-card h2 {
        color: #005b96;
        margin-top: 0;
        margin-bottom: 15px;
        font-size: 26px;
        border-bottom: 1px solid #eee;
        padding-bottom: 10px;
    }

    /* Highlight boxes for special info &amp; sponsors */
    .m2s-info-box {
        background: #f4f9fc;
        border-left: 5px solid #005b96;
        padding: 20px;
        border-radius: 5px;
        margin: 20px 0;
    }
    
    .m2s-info-box h3 {
        margin-top: 0;
        color: #005b96;
        font-size: 18px;
        margin-bottom: 10px;
    }

    .m2s-info-box ul {
        margin: 0;
        padding-left: 20px;
    }

    .m2s-info-box li {
        margin-bottom: 8px;
    }

    .m2s-thank-you {
        font-weight: bold;
        color: #2b7a0b; /* Green tone for success/thanks */
        font-size: 18px;
        margin-top: 20px;
    }

    /* CSS Grid for image galleries */
    .m2s-gallery {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
        gap: 20px;
        margin-top: 25px;
    }

    /* Special wide class for main sponsor banners */
    .m2s-banner-img {
        width: 100%;
        height: auto;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        margin-bottom: 20px;
    }

    .m2s-figure {
        margin: 0;
        overflow: hidden;
        border-radius: 8px;
        background: #f9f9f9;
        border: 1px solid #eee;
        display: flex;
        flex-direction: column;
    }

    .m2s-figure img {
        width: 100%;
        height: 220px;
        object-fit: cover;
        transition: transform 0.3s ease;
    }

    .m2s-figure:hover img {
        transform: scale(1.05);
    }

    .m2s-figcaption {
        padding: 12px;
        text-align: center;
        font-size: 14px;
        color: #555;
        font-weight: bold;
        background: #f9f9f9;
        flex-grow: 1;
        display: flex;
        align-items: center;
        justify-content: center;
    }
&lt;/style&gt;

&lt;div class=&quot;m2s-rally-wrapper&quot;&gt;

    &lt;!-- 2025 MtS Car Rally --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;2025 MtS Car Rally&lt;/h2&gt;
        &lt;p class=&quot;m2s-thank-you&quot;&gt;THANK YOU to Sponsors and Donors to our Annual Car Rally on 08 November 2025!&lt;/p&gt;
        &lt;img class=&quot;m2s-banner-img&quot; src=&quot;/uploads/Sponsors-for-Facebook.jpg&quot; alt=&quot;2025 Car Rally Sponsors&quot;&gt;
    &lt;/div&gt;

    &lt;!-- 2023 MtS Car Rally --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;2023 MtS Car Rally&lt;/h2&gt;
        &lt;p&gt;Since Elaine and Peter Selig brought the Car Rally as a third-party fundraising event of the Mission, significant amounts have been raised. The top three winners receive the wooden car trophy handcrafted by Peter.&lt;/p&gt;
        &lt;p&gt;This year, Amy and Chris Allen organized a successful race notwithstanding the severe rainstorm.&lt;/p&gt;
        
        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Matt-Jenn-Michaels-First-Place.jpg&quot; alt=&quot;1st Prize&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Matt &amp; Jenn Michaels&lt;br&gt;1st Prize&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Mary-Lewis-Sarah-Nelson-Second-Place.jpg&quot; alt=&quot;2nd Prize&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Mary Lewis &amp; Sarah Nelson&lt;br&gt;2nd Prize&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Robin-Paul-Shaw-Third-Place.jpg&quot; alt=&quot;3rd Prize&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Robin &amp; Paul Shaw&lt;br&gt;3rd Prize&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Amy-and-Christ-Allen.jpg&quot; alt=&quot;Amy and Chris Allen&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Organizers: Amy &amp; Chris Allen&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Trophy.jpg&quot; alt=&quot;Handcrafted Wooden Car Trophy&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Handcrafted Trophy by Peter Selig&lt;/figcaption&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- 2022 MtS Car Rally --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;2022 MtS Car Rally&lt;/h2&gt;
        &lt;p&gt;This year’s Annual Car Rally took place on 19 November in support of the Halifax Mission to Seafarers. It was a perfect mid-November day with 29 teams participating.&lt;/p&gt;
        &lt;p&gt;The route was along the South Shore – from Chester Basin to White Point.&lt;/p&gt;
        &lt;p&gt;The participants had a great time. They enjoyed the amazing buffet. A 50/50 draw was held and the winner, Rossana Wilson, generously gave her half back to the Mission. A live auction was also held, and race prizes were given to the First, Second, Third, and Last places.&lt;/p&gt;
        
        &lt;p&gt;&lt;strong&gt;Big THANKS to our sponsor: PSA Terminals!&lt;/strong&gt;&lt;/p&gt;
        &lt;p class=&quot;m2s-thank-you&quot;&gt;Kudos to all participants! The 2022 Car Rally was a huge social and financial event!&lt;/p&gt;

        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/2022-MtS-Car-Rally-1st-Place-Donna-Anthony-Steele-2-272x300.jpg&quot; alt=&quot;1st Place&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;1st place – Donna &amp; Anthony Steele&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/2022-MtS-Car-Rally-2nd-Place-Paul-Robin-Shaw-2-768x970.jpg&quot; alt=&quot;2nd Place&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;2nd place – Paul &amp; Robin Shaw&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/2022-MtS-Car-Rally-3rd-Place-Chris-Amy-Allen-2-300x295.jpg&quot; alt=&quot;3rd Place&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;3rd place – Chris &amp; Amy Allen&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/2022-MtS-Car-Rally-Last-Place-Akeno-Blythe-Samatha-Richards-2-284x300.jpg&quot; alt=&quot;Last Place&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Last place – Akeno Blythe &amp; Samantha Richards&lt;/figcaption&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;
                &lt;img src=&quot;/uploads/2022-MTS-Car-Rally-Sponsor-of-the-Year-PSA-Terminals-Pablo-Boulin-Ron-Twohig-Calvin-Whidden-Jan-van-Mossevelde-Emily-Goss-Dave-Wilkins-768x576.jpg&quot; alt=&quot;Sponsor PSA Terminals&quot;&gt;
                &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Sponsor: PSA Terminals&lt;/figcaption&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- 2021 MtS Car Rally --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2&gt;2021 MtS Car Rally&lt;/h2&gt;
        &lt;p&gt;With so many events cancelled, we were delighted to hear that Jacqueline and Ronnie Twohig were keen to host this event in 2021. They plotted the course and arranged a scavenger hunt along the route. Ronnie dropped in with a bag of cash totalling &lt;strong&gt;$3,500&lt;/strong&gt;. The event was a blast with participants ending up at the Truro Best Western for dinner and an overnight stay.&lt;/p&gt;
        &lt;p&gt;Elaine and Peter Selig started this event in 2017. We thank you for your ingenuity and generosity shining through a pandemic.&lt;/p&gt;

        &lt;div class=&quot;m2s-info-box&quot;&gt;
            &lt;h3&gt;2021 Highlights &amp; Sponsors&lt;/h3&gt;
            &lt;ul&gt;
                &lt;li&gt;&lt;strong&gt;Winners:&lt;/strong&gt; Heather Wozniak and Emily Goss, Team Double Trouble&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Event Sponsors:&lt;/strong&gt; Logistec, CBCL Engineering, and Canada Steamship Lines&lt;/li&gt;
                &lt;li&gt;&lt;strong&gt;Major Prize Sponsors:&lt;/strong&gt; Hotel Halifax, Sutton Place Hotel, Hapag-Lloyd, and the Truro Best Western&lt;/li&gt;
            &lt;/ul&gt;
            &lt;p style=&quot;margin-top: 10px; margin-bottom: 0;&quot;&gt;&lt;em&gt;Without this support, the Car Rally would not happen.&lt;/em&gt;&lt;/p&gt;
        &lt;/div&gt;

        &lt;p class=&quot;m2s-thank-you&quot;&gt;To all the participants, Thank You! Well done!&lt;/p&gt;

        &lt;div class=&quot;m2s-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/unnamed-1.jpg&quot; alt=&quot;2021 Car Rally Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/unnamed-2-300x300.jpg&quot; alt=&quot;2021 Car Rally Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/unnamed-3-300x225.jpg&quot; alt=&quot;2021 Car Rally Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/unnamed-4-300x225.jpg&quot; alt=&quot;2021 Car Rally Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/unnamed-9.jpg&quot; alt=&quot;2021 Car Rally Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/unnamed-5.jpg&quot; alt=&quot;2021 Car Rally Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/unnamed-6.jpg&quot; alt=&quot;2021 Car Rally Highlights&quot;&gt;&lt;/figure&gt;
            &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/unnamed-7.jpg&quot; alt=&quot;2021 Car Rally Highlights&quot;&gt;&lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

&lt;/div&gt;" style="margin: 1.5rem 0px;"></div><p></p>', NULL, 1, '2026-05-25 18:00:00', '2026-06-16 12:06:19'),
(18, 'Christmas Shoebox Campaign', 'christmas-shoebox-campaign', '<div data-html-block="true" data-html-content="&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;
    &lt;title&gt;Holiday Shoebox Campaign - Mission to Seafarers&lt;/title&gt;
    &lt;link href=&quot;https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;800&amp;display=swap&quot; rel=&quot;stylesheet&quot;&gt;
    &lt;style&gt;
        /* --- Modern, Scoped CSS Theme --- */
        :root {
            --mts-navy: #0a2540;       /* Deep Ocean Night */
            --mts-blue: #0284c7;       /* Maritime Blue */
            --mts-light-blue: #e0f2fe; /* Sea Foam */
            --mts-accent: #f59e0b;     /* Beacon/Sun Gold */
            --mts-green: #16a34a;      /* Success/Thank You Green */
            --mts-text: #334155;       /* Dark Slate */
            --mts-text-light: #64748b; /* Light Slate */
            --mts-bg: #f8fafc;         /* Off-white background */
            --mts-white: #ffffff;
            --mts-border: #e2e8f0;
        }

        /* Fixes width calculations globally so padding doesn''t break mobile view */
        *, *::before, *::after {
            box-sizing: border-box;
        }

        body {
            background-color: var(--mts-bg);
            margin: 0;
            padding: 0;
            font-family: ''Inter'', sans-serif;
            color: var(--mts-text);
            line-height: 1.7;
            overflow-x: hidden; /* Prevents any accidental horizontal scrolling on body */
        }

        /* --- HERO SECTION --- */
        .mts-hero {
            background: linear-gradient(135deg, var(--mts-navy) 0%, var(--mts-blue) 100%);
            color: var(--mts-white);
            padding: 80px 20px 60px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .mts-hero::after {
            content: '''';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 40px;
            background: var(--mts-bg);
            clip-path: polygon(100% 0%, 0% 100%, 100% 100%);
        }

        .mts-hero-content {
            max-width: 900px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .mts-hero h1 {
            font-size: 3.2rem;
            font-weight: 800;
            margin: 0 0 20px 0;
            letter-spacing: -1px;
            color: var(--mts-accent) !important; 
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.4);
        }

        .mts-hero p {
            font-size: 1.15rem;
            color: var(--mts-light-blue);
            margin-bottom: 15px;
        }

        .mts-thank-you-banner {
            display: inline-block;
            background: var(--mts-green);
            color: var(--mts-white);
            padding: 10px 25px;
            border-radius: 30px;
            font-weight: 800;
            font-size: 1.2rem;
            margin-top: 15px;
            box-shadow: 0 4px 15px rgba(22, 163, 74, 0.4);
            animation: float 3s ease-in-out infinite;
        }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-5px); }
            100% { transform: translateY(0px); }
        }

        /* --- MAIN CONTAINER --- */
        .mts-container {
            max-width: 1300px;
            margin: -20px auto 60px;
            padding: 0 20px;
            position: relative;
            z-index: 10;
        }

        /* --- INFO BOXES (Checklist &amp; Timeline) --- */
        .mts-info-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
            margin-bottom: 50px;
        }

        .mts-info-box {
            background-color: var(--mts-white);
            border-radius: 16px;
            padding: 35px 30px;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05);
            border-top: 5px solid var(--mts-blue);
            transition: transform 0.3s ease;
        }

        .mts-info-box:hover {
            transform: translateY(-5px);
        }

        .mts-info-box h3 {
            color: var(--mts-navy);
            font-size: 1.5rem;
            font-weight: 800;
            margin-top: 0;
            margin-bottom: 20px;
        }

        /* Interactive Custom Checklist */
        .mts-checklist {
            list-style: none;
            padding: 0;
            column-count: 2;
            column-gap: 20px;
        }

        .mts-checklist li {
            position: relative;
            padding-left: 28px;
            margin-bottom: 12px;
            font-size: 0.95rem;
            color: var(--mts-text);
        }

        .mts-checklist li::before {
            content: ''✓'';
            position: absolute;
            left: 0;
            top: 0;
            color: var(--mts-blue);
            font-weight: 900;
            font-size: 1.1rem;
        }

        /* Interactive Timeline */
        .mts-timeline {
            list-style: none;
            padding: 0;
            margin: 25px 0 0 10px;
            border-left: 3px solid var(--mts-light-blue);
        }

        .mts-timeline li {
            position: relative;
            padding-left: 25px;
            margin-bottom: 20px;
            font-size: 1rem;
        }

        .mts-timeline li::before {
            content: '''';
            position: absolute;
            left: -9px;
            top: 6px;
            width: 15px;
            height: 15px;
            background-color: var(--mts-white);
            border: 3px solid var(--mts-blue);
            border-radius: 50%;
            transition: background-color 0.3s ease;
        }

        .mts-timeline li:hover::before {
            background-color: var(--mts-accent);
            border-color: var(--mts-accent);
            box-shadow: 0 0 10px rgba(245, 158, 11, 0.5);
        }

        .mts-timeline strong {
            color: var(--mts-navy);
            display: block;
            font-size: 1.1rem;
        }

        /* --- EVENT CARDS --- */
        .mts-event-card {
            background-color: var(--mts-white);
            border-radius: 16px;
            padding: 50px 40px 30px;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05);
            border: 1px solid var(--mts-border);
            position: relative;
            margin-bottom: 60px;
        }

        .mts-year-badge {
            position: absolute;
            top: -20px;
            left: 40px;
            background-color: var(--mts-accent);
            color: var(--mts-navy);
            font-weight: 800;
            font-size: 1.2rem;
            padding: 8px 24px;
            border-radius: 30px;
            box-shadow: 0 4px 10px rgba(245, 158, 11, 0.3);
            border: 3px solid var(--mts-white);
        }

        .mts-event-card h2 {
            color: var(--mts-navy);
            font-size: 1.8rem;
            font-weight: 800;
            margin-top: 0;
            margin-bottom: 20px;
            border-bottom: 2px solid var(--mts-light-blue);
            padding-bottom: 15px;
        }

        /* --- INTERACTIVE QUOTES --- */
        .mts-quote {
            background: var(--mts-bg);
            border-left: 5px solid var(--mts-accent);
            padding: 25px 30px 25px 50px;
            margin: 30px 0;
            font-style: italic;
            font-size: 1.05rem;
            border-radius: 0 10px 10px 0;
            color: var(--mts-navy);
            box-shadow: 0 4px 6px rgba(0,0,0,0.02);
            position: relative;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .mts-quote:hover {
            transform: translateX(5px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.05);
        }

        .mts-quote::before {
            content: ''&quot;'';
            font-size: 5rem;
            color: var(--mts-light-blue);
            position: absolute;
            top: -15px;
            left: 10px;
            font-family: serif;
            opacity: 0.7;
            line-height: 1;
        }

        .mts-quote strong {
            display: block;
            margin-top: 15px;
            font-style: normal;
            font-size: 0.95rem;
            color: var(--mts-text-light);
        }

        /* --- HORIZONTAL SCROLLING GALLERY (Desktop) --- */
        .mts-scroll-gallery {
            display: flex;
            overflow-x: auto;
            gap: 20px;
            padding-bottom: 20px;
            margin-top: 30px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
            scrollbar-width: thin;
            scrollbar-color: var(--mts-light-blue) transparent;
        }

        .mts-scroll-gallery::-webkit-scrollbar {
            height: 8px;
        }
        .mts-scroll-gallery::-webkit-scrollbar-track {
            background: transparent; 
        }
        .mts-scroll-gallery::-webkit-scrollbar-thumb {
            background: var(--mts-border); 
            border-radius: 10px;
        }
        .mts-scroll-gallery::-webkit-scrollbar-thumb:hover {
            background: var(--mts-light-blue); 
        }

        .mts-figure {
            flex: 0 0 280px; 
            scroll-snap-align: start;
            margin: 0;
            border-radius: 10px;
            background: var(--mts-white);
            border: 1px solid var(--mts-border);
            padding: 8px; 
            box-shadow: 0 4px 10px rgba(0,0,0,0.04);
            display: flex;
            flex-direction: column;
            transition: transform 0.3s ease;
        }

        .mts-figure:hover {
            transform: translateY(-5px);
        }

        .mts-figure img {
            width: 100%;
            height: 200px;
            object-fit: cover; 
            display: block;
            border-radius: 6px;
        }

        .mts-figcaption {
            padding: 12px 10px 5px;
            text-align: center;
            font-size: 0.85rem;
            color: var(--mts-text-light);
            font-weight: 500;
            line-height: 1.4;
            flex-grow: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Tablet Grid Adjustments */
        @media (max-width: 900px) {
            .mts-info-grid { 
                grid-template-columns: 1fr; 
            }
        }

        /* =========================================
           COMPLETELY NEW MOBILE APP-STYLE FEED DESIGN
           ========================================= */

        @media (max-width: 768px) {
            
            /* Clean up Hero */
            .mts-hero {
                padding: 60px 15px 40px;
                clip-path: none;
            }
            .mts-hero::after { 
                display: none; 
            }
            .mts-hero h1 { 
                font-size: 2.2rem; 
                line-height: 1.2;
            }
            .mts-hero p {
                font-size: 1rem;
            }
            .mts-thank-you-banner {
                font-size: 1rem;
                padding: 8px 20px;
            }

            /* Remove main padding so elements can bleed to edges */
            .mts-container {
                margin: 0;
                padding: 0;
            }

            /* --- Edge-to-Edge Info Boxes (Guidelines &amp; Timeline) --- */
            .mts-info-grid { 
                grid-template-columns: 1fr; 
                gap: 0;
                margin-bottom: 0;
            }
            .mts-info-box {
                border-radius: 0;
                border-left: none;
                border-right: none;
                border-bottom: 8px solid var(--mts-border);
                padding: 40px 20px;
                box-shadow: none;
                margin-bottom: 0;
            }
            .mts-checklist { 
                column-count: 1; 
            }

            /* --- Edge-to-Edge Event Cards --- */
            .mts-event-card { 
                border: none;
                border-radius: 0;
                box-shadow: none;
                margin-bottom: 0;
                padding: 40px 0px; 
                border-bottom: 8px solid var(--mts-border); 
            }
            .mts-event-card:last-child {
                border-bottom: none;
            }
            
            /* Add margin so badge doesn''t touch the screen edge */
            .mts-year-badge { 
                position: relative;
                top: auto;
                left: auto;
                display: inline-block;
                padding: 4px 12px;
                font-size: 0.85rem;
                letter-spacing: 1px;
                background: var(--mts-accent);
                color: var(--mts-navy);
                border: none;
                border-radius: 6px;
                box-shadow: none;
                margin-bottom: 12px;
                margin-left: 20px; 
                text-transform: uppercase;
            }

            /* Add padding ONLY to text so it doesn''t shrink or touch edges */
            .mts-event-card h2 {
                font-size: 1.65rem;
                border-bottom: none;
                padding-bottom: 0;
                margin-bottom: 15px;
                line-height: 1.2;
                padding-left: 20px;
                padding-right: 20px;
            }
            .mts-event-card p {
                font-size: 1rem;
                margin-bottom: 15px;
                padding-left: 20px;
                padding-right: 20px;
            }

            /* Add margins to Quotes so they don''t touch edges */
            .mts-quote {
                padding: 20px 20px 20px 45px;
                font-size: 0.95rem;
                margin: 30px 20px; 
            }
            .mts-quote::before {
                font-size: 4rem;
                top: -10px;
                left: 10px;
            }

            /* --- Remove Gallery Scroll &amp; convert to 1 IMAGE AT A TIME (1fr) FULL WIDTH --- */
            .mts-scroll-gallery {
                display: grid;
                grid-template-columns: 1fr; /* 1 column layout */
                overflow-x: visible; 
                scroll-snap-type: none;
                gap: 8px; /* Slight gap between stacked photos */
                padding-bottom: 0;
                margin-top: 15px;
                width: 100%; 
            }

            /* Strip away styling to make images bleed to edge */
            .mts-figure { 
                flex: auto; 
                width: 100%;
                scroll-snap-align: none;
                padding: 0;
                border: none;
                border-radius: 0;
                box-shadow: none;
                background: transparent;
            } 
            .mts-figure:hover { 
                transform: none; 
                box-shadow: none; 
            }

            /* Removed forced height so images display perfectly edge to edge */
            .mts-figure img {
                border-radius: 0;
                width: 100%;
                height: auto; 
                aspect-ratio: auto; 
                object-fit: cover; 
            }

            /* Adjust captions to align properly with text spacing */
            .mts-figcaption {
                font-size: 0.85rem;
                padding: 10px 20px 15px;
                background: var(--mts-bg);
                text-align: left;
            }
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;

    &lt;!-- Elevated Hero Header --&gt;
    &lt;header class=&quot;mts-hero&quot;&gt;
        &lt;div class=&quot;mts-hero-content&quot;&gt;
            &lt;h1&gt;Holiday Shoebox Campaign&lt;/h1&gt;
            &lt;p&gt;Nothing can stop Christmas, and we continue to share with seafarers the joy and spirit of the holidays through gift-giving. The campaign is also our additional way of thanking the Hidden Heroes for their sacrifices and hard work. In many ways, the seafarers deeply appreciate the presents they receive from people who care beyond their homes and families.&lt;/p&gt;
            &lt;div class=&quot;mts-thank-you-banner&quot;&gt;To all our donors and supporters, we share the seafarers’ THANK YOU!&lt;/div&gt;
        &lt;/div&gt;
    &lt;/header&gt;

    &lt;!-- Main Content Area --&gt;
    &lt;main class=&quot;mts-container&quot;&gt;

        &lt;!-- Guidelines and Timeline Grid --&gt;
        &lt;div class=&quot;mts-info-grid&quot;&gt;
            &lt;!-- Guidelines Box --&gt;
            &lt;div class=&quot;mts-info-box&quot;&gt;
                &lt;h3&gt;What is in the shoebox?&lt;/h3&gt;
                &lt;p&gt;This list is deemed as essential items the seafarers generally and personally need onboard (A regular running shoe box):&lt;/p&gt;
                &lt;ul class=&quot;mts-checklist&quot;&gt;
                    &lt;li&gt;Hat / Toque&lt;/li&gt;
                    &lt;li&gt;Scarf or neck warmer&lt;/li&gt;
                    &lt;li&gt;Gloves&lt;/li&gt;
                    &lt;li&gt;Socks&lt;/li&gt;
                    &lt;li&gt;Wrapped hard candy (no chocolate)&lt;/li&gt;
                    &lt;li&gt;Soap&lt;/li&gt;
                    &lt;li&gt;Toothpaste &amp; Toothbrush&lt;/li&gt;
                    &lt;li&gt;Shampoo/body wash (max 375ml)&lt;/li&gt;
                    &lt;li&gt;Shaving foam &amp; Razors&lt;/li&gt;
                    &lt;li&gt;Deodorant&lt;/li&gt;
                    &lt;li&gt;Lip balm&lt;/li&gt;
                    &lt;li&gt;Playing cards&lt;/li&gt;
                    &lt;li&gt;Souvenir of Canada&lt;/li&gt;
                    &lt;li&gt;Pen / pencil&lt;/li&gt;
                    &lt;li&gt;Small packages of tissues&lt;/li&gt;
                    &lt;li&gt;Comb&lt;/li&gt;
                    &lt;li&gt;Christmas card&lt;/li&gt;
                    &lt;li&gt;Bible (supplied by mission)&lt;/li&gt;
                    &lt;li&gt;Mementos of NS, PEI or Canada&lt;/li&gt;
                &lt;/ul&gt;
                &lt;p style=&quot;margin-top: 20px; font-size: 0.9rem; color: var(--mts-text-light);&quot;&gt;Our team of shoebox experts quality checks the contents of shoeboxes we received if they are already stuffed with items. Otherwise, the items placed in the box are carefully identified and limited only to the above list. All shoeboxes are gift-wrapped by a team of volunteers, signifying the gifts are produced with joy, love, and passion, driven by the spirit of Christmas.&lt;/p&gt;
            &lt;/div&gt;

            &lt;!-- Timeline Box --&gt;
            &lt;div class=&quot;mts-info-box&quot;&gt;
                &lt;h3&gt;When is the campaign?&lt;/h3&gt;
                &lt;p&gt;We accept donations in kind or in cash. We use cash donations to purchase the items that go in the shoebox. Donations can be sent online, by courier/postal mail, or dropped in at our address (10:00AM - 3:00PM).&lt;/p&gt;
                &lt;ul class=&quot;mts-timeline&quot;&gt;
                    &lt;li&gt;&lt;strong&gt;October&lt;/strong&gt; We start accepting donations of shoeboxes, cash, and kind.&lt;/li&gt;
                    &lt;li&gt;&lt;strong&gt;November&lt;/strong&gt; We set up and begin the production process (sorting, stuffing, wrapping).&lt;/li&gt;
                    &lt;li&gt;&lt;strong&gt;December&lt;/strong&gt; We start delivery of Christmas shoebox presents to ships.&lt;/li&gt;
                    &lt;li&gt;&lt;strong&gt;January&lt;/strong&gt; &lt;em&gt;The campaign continues while supply lasts.&lt;/em&gt;&lt;/li&gt;
                &lt;/ul&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2024 Campaign --&gt;
        &lt;div class=&quot;mts-event-card&quot;&gt;
            &lt;div class=&quot;mts-year-badge&quot;&gt;2024&lt;/div&gt;
            &lt;h2&gt;Shoebox Campaign&lt;/h2&gt;
            &lt;p&gt;The campaign officially started on the 21st of November and the production process began on November 25th. Delivery of gifts to the crew of ships continued until the first week of January 2025 when the last shoebox was given.&lt;/p&gt;
            &lt;p&gt;&lt;strong&gt;At the end of the campaign, a total of 1,023 shoeboxes were delivered to 46 ships!&lt;/strong&gt;&lt;/p&gt;

            &lt;div class=&quot;mts-quote&quot;&gt;
                &quot;This is to say thank you for your Christmas presents for all of our crew member. 26 pcs received at last Halifax port stay, and please kindly convey the same greeting to Church Anglican Parish New LONDON. Have a nice Christmas to all and happy new year 2025!&quot;
                &lt;strong&gt;— Captain Takanori Furuhashi, Master of ONE MINATO&lt;/strong&gt;
            &lt;/div&gt;

            &lt;div class=&quot;mts-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/MSC-Annick-1024x768.jpg&quot; alt=&quot;MSC Annick&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Yasa-Pelican-1024x768.jpg&quot; alt=&quot;Yasa Pelican&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/One-Millau-768x1024.jpg&quot; alt=&quot;One Millau&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Bakkafoss-300x225.jpg&quot; alt=&quot;Bakkafoss&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/IMG_1947-300x207.jpg&quot; alt=&quot;Shoebox Campaign Highlights&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2023 Campaign --&gt;
        &lt;div class=&quot;mts-event-card&quot;&gt;
            &lt;div class=&quot;mts-year-badge&quot;&gt;2023&lt;/div&gt;
            &lt;h2&gt;Shoebox Campaign&lt;/h2&gt;
            &lt;p&gt;Another fruitful and successful campaign in 2023 despite the inflation affecting Canada. This year, the campaign brought joy, hope and strength to 1,228 seafarers who spent their Holidays away from home and family.&lt;/p&gt;
            &lt;p&gt;With full and selfless support from our sponsors, donors, friends, and volunteers with their families, the spirit of the Holidays is shared with the seafarers who significantly contribute to keeping the global economy running.&lt;/p&gt;

            &lt;div class=&quot;mts-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Picture1-300x225.jpg&quot; alt=&quot;2023 Campaign Highlight&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Picture2-300x225.jpg&quot; alt=&quot;2023 Campaign Highlight&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Picture3.jpg&quot; alt=&quot;2023 Campaign Highlight&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Picture4-225x300.jpg&quot; alt=&quot;2023 Campaign Highlight&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Picture5-300x225.jpg&quot; alt=&quot;2023 Campaign Highlight&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Picture6-300x225.jpg&quot; alt=&quot;2023 Campaign Highlight&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Picture7-300x139.jpg&quot; alt=&quot;2023 Campaign Highlight&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Picture8-300x139.jpg&quot; alt=&quot;2023 Campaign Highlight&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2022 Campaign --&gt;
        &lt;div class=&quot;mts-event-card&quot;&gt;
            &lt;div class=&quot;mts-year-badge&quot;&gt;2022&lt;/div&gt;
            &lt;h2&gt;Shoebox Campaign&lt;/h2&gt;
            &lt;p&gt;This year, a total of 1,160 shoeboxes were delivered to 51 ships that came to the Halifax port in December 2022 and the first week of January 2023.&lt;/p&gt;
            &lt;p style=&quot;color: var(--mts-green); font-weight: 700;&quot;&gt;To all our wonderful and never-tiring donors, THANK YOU!&lt;/p&gt;

            &lt;div class=&quot;mts-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Augusta-Luna-2-150x150.jpg&quot; alt=&quot;Augusta Luna&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Seafarers receiving and appreciating presents&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Vivienne-Sheri-D-1-300x225.jpg&quot; alt=&quot;Vivienne Sheri D&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Seafarers receiving presents&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/CMA-CGM-Pelleas-1-1-300x225.jpg&quot; alt=&quot;CMA CGM Pelleas&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Seafarers receiving presents&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/CMA-CGM-A.-Lincoln-2-300x225.jpg&quot; alt=&quot;CMA CGM A. Lincoln&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Seafarers receiving presents&lt;/figcaption&gt;&lt;/figure&gt;
                
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Youngest-Donors-1-3-169x300.jpg&quot; alt=&quot;Bronwyn Hatcher&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Our youngest donor: Bronwyn Hatcher, 5&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Youngest-Donors-2-3-169x300.jpg&quot; alt=&quot;Anonymous Donor&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Our youngest donor: Anonymous, 10&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Anderson-Donor-2-300x225.jpg&quot; alt=&quot;Mrs. Frankie Anderson&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Mrs. Frankie Anderson &amp; Marie Gallant&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Parish-of-Tangiers-2-225x300.jpg&quot; alt=&quot;Parish of Tangiers&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Parish of Tangier delivering to MV Hanzevast&lt;/figcaption&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2021 Campaign --&gt;
        &lt;div class=&quot;mts-event-card&quot;&gt;
            &lt;div class=&quot;mts-year-badge&quot;&gt;2021&lt;/div&gt;
            &lt;h2&gt;Shoebox Campaign&lt;/h2&gt;
            &lt;p&gt;Another year of a successful campaign despite the restrictions due to the threat of Covid 19 and its highly infectious variants. We received untiring and unselfish support from existing and new volunteers who checked, stuffed and wrapped the shoeboxes.&lt;/p&gt;
            &lt;p&gt;During the campaign period, we delivered presents to 1,080 seafarers onboard 51 ships that visited the ports of Halifax. The Mission to Seafarers Halifax is grateful for funding from NAMMA (North American Maritime Ministry Association), ICMA, the ITF Seafarers’ Trust, as well as our church, community and individual donors.&lt;/p&gt;
            
            &lt;div class=&quot;mts-quote&quot;&gt;
                &quot;Thanks for the gifts you were so thoughtful to prepare one month in advance and deliver to the vessel... Today they were distributed among the seamen and everybody was very happy and touched by your kindness! Wishing you a very Merry Christmas!&quot;
                &lt;strong&gt;— Captain Angelov Vladimir, Master of M/V ZIM Tarragona&lt;/strong&gt;
            &lt;/div&gt;
            &lt;div class=&quot;mts-quote&quot;&gt;
                &quot;Thank you very much for everything that you and the Mission to Seafarers Halifax have done... Not only that, your colleague also gave us gifts! May the Lord continue to bless all of you.&quot;
                &lt;strong&gt;— Capt. John P. Miranda, Master of M/V NYK RUMINA&lt;/strong&gt;
            &lt;/div&gt;
            &lt;div class=&quot;mts-quote&quot;&gt;
                &quot;I would like to thank you for nice presents we received from you, we all wish you and your families Merry Christmas and Healthy Prosperous New Year!&quot;
                &lt;strong&gt;— Capt. Stanislaw Kaldunski and all crew of M/V Augusta Sun&lt;/strong&gt;
            &lt;/div&gt;
            &lt;div class=&quot;mts-quote&quot;&gt;
                &quot;Opening gifts – once again may staff and volunteers have a wonderful Christmas and blessed year. Thanks to all of you for your kindness.&quot;
                &lt;strong&gt;— BBC Europe Crew&lt;/strong&gt;
            &lt;/div&gt;

            &lt;div class=&quot;mts-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Joyce-Webb-1152x1536.jpg&quot; alt=&quot;Mrs. Joyce Webb&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Mrs. Joyce Webb, 91&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Joyce-Webb-with-Jim-Calvesbert-300x225.jpg&quot; alt=&quot;Joyce Webb and Capt Jim Calvesbert&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Mrs. Webb with Capt. Jim&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Shoebox-ladies-768x768.jpg&quot; alt=&quot;Shoebox ladies&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Const. Jenn Pace, Sgt. Nancy &amp; Aurora&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Zim-Tarragona-150x150.jpg&quot; alt=&quot;Zim Tarragona&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Taipei-Trader-150x150.jpg&quot; alt=&quot;Taipei Trader&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/NYK-Constellation-150x150.jpg&quot; alt=&quot;NYK Constellation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/MSC-Texas-150x150.jpg&quot; alt=&quot;MSC Texas&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Kotor-Bay-150x150.jpg&quot; alt=&quot;Kotor Bay&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Augusta-Sun-150x150.jpg&quot; alt=&quot;Augusta Sun&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/One-Houston-150x150.jpg&quot; alt=&quot;One Houston&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/BBC-Europe-1-150x150.jpg&quot; alt=&quot;BBC Europe&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2020 Campaign --&gt;
        &lt;div class=&quot;mts-event-card&quot;&gt;
            &lt;div class=&quot;mts-year-badge&quot;&gt;2020&lt;/div&gt;
            &lt;h2&gt;Shoebox Campaign&lt;/h2&gt;
            &lt;p&gt;Despite the COVID pandemic, we moved forward with our campaign in 2020. An additional consideration in the effort is the fact that seafarers continued to work amid the threat of COVID 19. The presents received left a lasting relief and satisfaction to these essential workers.&lt;/p&gt;
            &lt;p&gt;The campaign produced over 1,000 shoebox presents and distributed these to seafarers onboard over 50 ships that visited the Halifax ports during the period.&lt;/p&gt;

            &lt;div class=&quot;mts-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/James-no-ordinary-PILOT-1-1152x1536.jpg&quot; alt=&quot;James Halifax Pilot&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;James (Halifax Pilot)&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Constable-Jenn-Sargent-Nancy-and-Volunteer-Colm-1-768x576.jpg&quot; alt=&quot;Halifax Port Police volunteers&quot;&gt;&lt;figcaption class=&quot;mts-figcaption&quot;&gt;Sgt. Nancy, Const. Jenn &amp; Colm&lt;/figcaption&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/1.-Zim-Yokohama-John-A.-1-150x150.jpg&quot; alt=&quot;Zim Yokohama&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Deacon-Art-Mitchell-delivers-shoeboxes-to-Tropic-Hope-Crew-1-150x150.jpg&quot; alt=&quot;Tropic Hope Crew&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/Howard-Em-Kea-2-300x225.jpg&quot; alt=&quot;Howard Em Kea&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;mts-figure&quot;&gt;&lt;img src=&quot;/uploads/MOL-Maestro-crew-receive-shoebox-gifts-1-150x150.jpg&quot; alt=&quot;MOL Maestro crew&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

    &lt;/main&gt;

&lt;/body&gt;
&lt;/html&gt;" style="margin: 1.5rem 0px;"></div><p></p>', NULL, 1, '2026-05-25 17:00:00', '2026-06-16 12:16:53');

INSERT INTO events (id, title, url, content, event_date, is_featured, created_at, updated_at) VALUES
(19, 'Annual Christmas Luncheon', 'annual-christmas-luncheon', '<h1 style="text-align: center;">2026 Annual Christmas Luncheon</h1><h1 style="text-align: center;">December 9, Wednesday, at Pier 21</h1><h4 style="text-align: center;">Details to be announced</h4><div data-html-block="true" data-html-content="&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;
    &lt;title&gt;Annual Christmas Luncheon - Mission to Seafarers&lt;/title&gt;
    &lt;link href=&quot;https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;800&amp;display=swap&quot; rel=&quot;stylesheet&quot;&gt;
    &lt;style&gt;
        /* --- Modern, Scoped CSS Theme --- */
        :root {
            --mts-navy: #0a2540;       /* Deep Ocean Night */
            --mts-blue: #0284c7;       /* Maritime Blue */
            --mts-light-blue: #e0f2fe; /* Sea Foam */
            --mts-accent: #f59e0b;     /* Beacon/Sun Gold */
            --mts-text: #334155;       /* Dark Slate */
            --mts-text-light: #64748b; /* Light Slate */
            --mts-bg: #f8fafc;         /* Off-white background */
            --mts-white: #ffffff;
            --mts-border: #e2e8f0;
        }

        /* Fixes width calculations globally so padding doesn''t break mobile view */
        *, *::before, *::after {
            box-sizing: border-box;
        }

        body {
            background-color: var(--mts-bg);
            margin: 0;
            padding: 0;
            font-family: ''Inter'', sans-serif;
            color: var(--mts-text);
            line-height: 1.7;
            overflow-x: hidden; /* Prevents horizontal scrolling on the main body */
        }

        /* --- HERO SECTION --- */
        .m2s-hero {
            background: linear-gradient(135deg, var(--mts-navy) 0%, var(--mts-blue) 100%);
            color: var(--mts-white);
            padding: 80px 20px 60px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .m2s-hero::after {
            content: '''';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 40px;
            background: var(--mts-bg);
            clip-path: polygon(100% 0%, 0% 100%, 100% 100%);
        }

        .m2s-hero-content {
            max-width: 800px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .m2s-hero h1 {
            font-size: 3.2rem;
            font-weight: 800;
            margin: 0 0 15px 0;
            letter-spacing: -1px;
            color: var(--mts-accent) !important; 
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.4);
        }

        .m2s-hero p {
            font-size: 1.15rem;
            color: var(--mts-light-blue);
            margin-bottom: 0;
        }

        /* --- MAIN CONTAINER --- */
        .m2s-container {
            max-width: 1100px;
            margin: -30px auto 60px;
            padding: 0 20px;
            position: relative;
            z-index: 10;
        }

        /* --- EVENT CARDS --- */
        .m2s-event-card {
            background-color: var(--mts-white);
            border-radius: 16px;
            padding: 50px 40px 40px;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05);
            border: 1px solid var(--mts-border);
            position: relative;
            margin-bottom: 60px;
            transition: all 0.3s ease;
        }

        .m2s-event-card:hover {
            box-shadow: 0 20px 40px -10px rgba(2, 132, 199, 0.1);
        }

        .m2s-year-badge {
            position: absolute;
            top: -20px;
            left: 40px;
            background-color: var(--mts-accent);
            color: var(--mts-navy);
            font-weight: 800;
            font-size: 1.2rem;
            padding: 8px 24px;
            border-radius: 30px;
            box-shadow: 0 4px 10px rgba(245, 158, 11, 0.3);
            border: 3px solid var(--mts-white);
        }

        .m2s-event-card h2 {
            color: var(--mts-navy);
            font-size: 1.8rem;
            font-weight: 800;
            margin-top: 0;
            margin-bottom: 20px;
            border-bottom: 2px solid var(--mts-light-blue);
            padding-bottom: 15px;
        }
        
        .m2s-event-card h3 {
            color: var(--mts-blue);
            font-size: 1.2rem;
            margin-top: 40px;
            margin-bottom: 15px;
            font-weight: 600;
        }

        .m2s-event-card p {
            margin-bottom: 20px;
            font-size: 1.05rem;
            color: var(--mts-text);
        }

        /* --- FULL WIDTH BANNER --- */
        .m2s-banner-img {
            width: 100%;
            height: auto;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.08);
            margin-top: 20px;
            margin-bottom: 10px;
            display: block;
        }

        /* --- HORIZONTAL SCROLLING GALLERY (Desktop) --- */
        .m2s-scroll-gallery {
            display: flex;
            overflow-x: auto;
            gap: 20px;
            padding-bottom: 20px; /* Space for scrollbar */
            margin-top: 20px;
            margin-bottom: 10px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
            scrollbar-width: thin; /* Firefox */
            scrollbar-color: var(--mts-light-blue) transparent;
        }

        /* Custom Scrollbar for Chrome/Safari */
        .m2s-scroll-gallery::-webkit-scrollbar {
            height: 8px;
        }
        .m2s-scroll-gallery::-webkit-scrollbar-track {
            background: transparent; 
        }
        .m2s-scroll-gallery::-webkit-scrollbar-thumb {
            background: var(--mts-border); 
            border-radius: 10px;
        }
        .m2s-scroll-gallery::-webkit-scrollbar-thumb:hover {
            background: var(--mts-light-blue); 
        }

        .m2s-figure {
            flex: 0 0 300px; /* Fixed width for horizontal scrolling */
            scroll-snap-align: start;
            margin: 0;
            border-radius: 10px;
            background: var(--mts-white);
            border: 1px solid var(--mts-border);
            padding: 8px; 
            box-shadow: 0 4px 10px rgba(0,0,0,0.04);
            display: flex;
            flex-direction: column;
            transition: transform 0.3s ease;
        }

        .m2s-figure:hover {
            transform: translateY(-5px);
        }

        .m2s-figure img {
            width: 100%;
            height: 200px; /* Uniform height to keep gallery clean */
            object-fit: cover; /* Prevents stretching, crops elegantly */
            display: block;
            border-radius: 6px;
        }

        .m2s-figcaption {
            padding: 12px 10px 5px;
            text-align: center;
            font-size: 0.9rem;
            color: var(--mts-text-light);
            font-weight: 500;
            line-height: 1.4;
            flex-grow: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* --- ANNOUNCEMENT HIGHLIGHT --- */
        .m2s-announcement {
            background: var(--mts-bg);
            border-left: 5px solid var(--mts-accent);
            padding: 25px 30px;
            margin: 40px 0 10px;
            font-size: 1.1rem;
            border-radius: 0 10px 10px 0;
            color: var(--mts-navy);
            box-shadow: 0 4px 6px rgba(0,0,0,0.02);
            font-weight: 600;
        }

        /* =========================================
           COMPLETELY NEW MOBILE APP-STYLE FEED DESIGN
           ========================================= */
        @media (max-width: 768px) {
            
            /* Clean up the Hero for edge-to-edge transition */
            .m2s-hero { 
                padding: 50px 20px; 
                clip-path: none; 
            }
            .m2s-hero::after { 
                display: none; 
            }
            .m2s-hero h1 { 
                font-size: 2.2rem; 
                line-height: 1.2;
            }
            .m2s-hero p { 
                font-size: 1rem; 
            }

            .m2s-container {
                margin: 0;
                padding: 0;
            }

            /* REMOVED PADDING HERE so images can stretch full width naturally */
            .m2s-event-card {
                border: none;
                border-radius: 0;
                box-shadow: none;
                margin-bottom: 0;
                padding: 40px 0px; 
                border-bottom: 8px solid var(--mts-border); 
            }
            .m2s-event-card:last-child {
                border-bottom: none;
            }

            /* Added left margin so the badge doesn''t touch the screen edge */
            .m2s-year-badge {
                position: relative;
                top: auto;
                left: auto;
                display: inline-block;
                padding: 4px 12px;
                font-size: 0.85rem;
                letter-spacing: 1px;
                background: var(--mts-light-blue);
                color: var(--mts-blue);
                border: none;
                border-radius: 6px;
                box-shadow: none;
                margin-bottom: 12px;
                margin-left: 20px; 
                text-transform: uppercase;
            }

            /* Added side padding back to text elements only so content DOES NOT SHRINK */
            .m2s-event-card h2, 
            .m2s-event-card h3, 
            .m2s-event-card p {
                padding-left: 20px;
                padding-right: 20px;
            }
            
            .m2s-event-card h2 {
                font-size: 1.65rem;
                border-bottom: none;
                padding-bottom: 0;
                margin-bottom: 15px;
                line-height: 1.2;
            }
            .m2s-event-card h3 {
                font-size: 1.15rem;
                margin-top: 30px;
                margin-bottom: 10px;
            }
            .m2s-event-card p {
                font-size: 1rem;
                margin-bottom: 15px;
            }

            /* Added side margin to the Announcement block so it doesn''t touch edges */
            .m2s-announcement { 
                padding: 20px; 
                font-size: 1rem; 
                margin: 30px 20px; 
            }
            /* Remove extra padding from the P tag inside the announcement */
            .m2s-announcement p {
                padding-left: 0;
                padding-right: 0;
                margin-bottom: 0;
            }

            /* Banner completely full width naturally */
            .m2s-banner-img {
                width: 100%; 
                margin-left: 0;
                margin-right: 0;
                border-radius: 0;
                box-shadow: none;
                margin-bottom: 20px;
                margin-top: 20px;
            }

            /* --- Remove Gallery Scroll &amp; convert to 1 IMAGE AT A TIME (1fr) &amp; FULL WIDTH --- */
            .m2s-scroll-gallery {
                display: grid;
                grid-template-columns: 1fr; /* 1 column layout */
                overflow-x: visible; 
                scroll-snap-type: none;
                gap: 8px; /* Slight gap between stacked photos */
                padding-bottom: 0;
                margin-top: 15px;
                width: 100%; 
            }

            /* Strip away the polaroid styling */
            .m2s-figure {
                flex: auto;
                width: 100%;
                scroll-snap-align: none;
                padding: 0;
                border: none;
                border-radius: 0;
                box-shadow: none;
                background: transparent;
            }
            .m2s-figure:hover { 
                transform: none; 
                box-shadow: none; 
            }

            /* Removed force height so images display correctly edge to edge */
            .m2s-figure img {
                border-radius: 0;
                width: 100%;
                height: auto; 
                aspect-ratio: auto; 
                object-fit: cover; 
            }

            /* Adjust captions to align properly */
            .m2s-figcaption {
                font-size: 0.85rem;
                padding: 10px 20px 15px;
                background: var(--mts-bg);
                text-align: left;
            }
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;

    &lt;!-- Elevated Hero Header --&gt;
    &lt;header class=&quot;m2s-hero&quot;&gt;
        &lt;div class=&quot;m2s-hero-content&quot;&gt;
            &lt;h1&gt;Annual Christmas Luncheon&lt;/h1&gt;
            &lt;p&gt;A joyous time gathering with our sponsors, patrons, donors, volunteers, and friends to celebrate the holiday season.&lt;/p&gt;
        &lt;/div&gt;
    &lt;/header&gt;

    &lt;!-- Main Content Area --&gt;
    &lt;main class=&quot;m2s-container&quot;&gt;

        &lt;!-- 2025 Christmas Luncheon --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2025&lt;/div&gt;
            &lt;h2&gt;Christmas Luncheon&lt;/h2&gt;
            &lt;p&gt;Another successful Annual Christmas Luncheon notwithstanding the inclement weather on December 4th. In addition to a social function, the luncheon was a gathering of the Mission’s Sponsors, Patrons, Donors, and Friends who tirelessly support the effort of promoting the well-being of seafarers and appreciate the contribution of the Mission volunteers to the operations of MtS Halifax. Thank you to everyone who made this event a continuing success!&lt;/p&gt;
            &lt;img class=&quot;m2s-banner-img&quot; src=&quot;/uploads/The-East-Carollers-with-Their-Honours--1024x768.jpg&quot; alt=&quot;2025 Christmas Luncheon - The East Carollers&quot;&gt;
        &lt;/div&gt;

        &lt;!-- 2024 Christmas Luncheon --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2024&lt;/div&gt;
            &lt;h2&gt;Christmas Luncheon&lt;/h2&gt;
            &lt;p&gt;Held on 11 December 2024, the MtS Christmas Luncheon is an awaited event starting the holiday celebration at the Halifax port area. This is the time, again, when the MtS staff, volunteers, sponsors, patrons, and friends gather together to celebrate and meet industry colleagues and friends.&lt;/p&gt;
            
            &lt;div class=&quot;m2s-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/6-768x513.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/4-768x513.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/8-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/12-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/3-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/16-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/17-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/18-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/19-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/20-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/1-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/10-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/2-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/5-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/11-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/15-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/14-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/7-300x200.jpg&quot; alt=&quot;2024 Luncheon Photo&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2023 Christmas Luncheon --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2023&lt;/div&gt;
            &lt;h2&gt;Christmas Luncheon&lt;/h2&gt;
            &lt;p&gt;For the second year after the Covid 19 pandemic, Mts Halifax held its Annual Christmas Luncheon on 06 December 2023 at the Rowe Hall, Pier 21.&lt;/p&gt;
            
            &lt;div class=&quot;m2s-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/MtS-Volunteers-at-Christmas-Luncheon-2023-768x512.jpg&quot; alt=&quot;2023 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/53407925381_180aa21f08_o-300x200.jpg&quot; alt=&quot;2023 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/53408102023_08ae91cd61_o-300x200.jpg&quot; alt=&quot;2023 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/53407923441_010df930db_o-300x200.jpg&quot; alt=&quot;2023 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/53408255839_f17c82b2d3_o-300x200.jpg&quot; alt=&quot;2023 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/53408360700_21a380d9cc_o-300x200.jpg&quot; alt=&quot;2023 Luncheon Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/MtS-Volunteers-at-Christmas-Luncheon-2023-300x200.jpg&quot; alt=&quot;MtS Volunteers at Christmas Luncheon 2023&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Karl-Risser-UNIFOR-TEAM-300x200.jpg&quot; alt=&quot;Karl Risser UNIFOR TEAM&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/53407000067_019a23880d_o-300x200.jpg&quot; alt=&quot;2023 Luncheon Photo&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2022 Christmas Luncheon --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2022&lt;/div&gt;
            &lt;h2&gt;Christmas Luncheon&lt;/h2&gt;
            &lt;p&gt;After two years of the global COVID-19 pandemic, the Annual Christmas Luncheon was held at Pier 21. The event was well-attended and the gathering provided warmth and support from the Mission’s partners, benefactors, volunteers, and friends.&lt;/p&gt;

            &lt;h3&gt;Addressing the luncheon guests—&lt;/h3&gt;
            &lt;div class=&quot;m2s-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/m22ts21-300x200.jpg&quot; alt=&quot;His Honour The Honourable Arthur J. LeBlanc&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;His Honour The Honourable Arthur J. LeBlanc&lt;/figcaption&gt;
                &lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/m22ts27-300x200.jpg&quot; alt=&quot;His Worship the Mayor of Halifax, Mayor Mike Savage&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;His Worship the Mayor of Halifax, Mayor Mike Savage&lt;/figcaption&gt;
                &lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/m22ts39-1-300x264.jpg&quot; alt=&quot;MtS Chair of the Board, Alastair Gray&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;MtS Chair of the Board, Alastair Gray&lt;/figcaption&gt;
                &lt;/figure&gt;
            &lt;/div&gt;

            &lt;h3&gt;Special THANKS to the Master of Ceremonies, Jessica Norman, and the luncheon guests—&lt;/h3&gt;
            &lt;div class=&quot;m2s-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts05-300x200.jpg&quot; alt=&quot;Luncheon Guests&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts13-300x200.jpg&quot; alt=&quot;Luncheon Guests&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts37-300x200.jpg&quot; alt=&quot;Luncheon Guests&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts36-300x200.jpg&quot; alt=&quot;Luncheon Guests&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;

            &lt;h3&gt;Presentation of STARs to our community partners for their continued support to the Mission—&lt;/h3&gt;
            &lt;div class=&quot;m2s-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts60-300x200.jpg&quot; alt=&quot;Presentation of STARs&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts58-300x200.jpg&quot; alt=&quot;Presentation of STARs&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts56-300x200.jpg&quot; alt=&quot;Presentation of STARs&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;

            &lt;h3&gt;The Raffle winners—&lt;/h3&gt;
            &lt;div class=&quot;m2s-scroll-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts49-300x200.jpg&quot; alt=&quot;Raffle Winner&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts43-300x200.jpg&quot; alt=&quot;Raffle Winner&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/m22ts45-300x200.jpg&quot; alt=&quot;Raffle Winner&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;

            &lt;p&gt;Never the least, BIG thanks to Mike Cowie and his band!&lt;/p&gt;
            &lt;img class=&quot;m2s-banner-img&quot; src=&quot;/uploads/m22ts08-768x512.jpg&quot; alt=&quot;Mike Cowie and his band&quot;&gt;

            &lt;div class=&quot;m2s-announcement&quot;&gt;
                &lt;p&gt;Coming up—&lt;br&gt;2023 Annual Christmas Luncheon on December 6th, Details will be posted in this website.&lt;/p&gt;
            &lt;/div&gt;

        &lt;/div&gt;

    &lt;/main&gt;

&lt;/body&gt;
&lt;/html&gt;" style="margin: 1.5rem 0px;"></div><p></p>', '2026-12-09 04:00:00', 1, '2026-05-25 16:00:00', '2026-07-20 20:55:07'),
(20, 'International Women’s Day', 'international-women-s-day', '<div data-html-block="true" data-html-content="&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;
    &lt;title&gt;International Women''s Day - Mission to Seafarers&lt;/title&gt;
    &lt;link href=&quot;https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;800&amp;display=swap&quot; rel=&quot;stylesheet&quot;&gt;
    &lt;style&gt;
        /* --- Modern, Scoped CSS Theme --- */
        :root {
            --mts-navy: #0a2540;       /* Deep Ocean Night */
            --mts-blue: #0284c7;       /* Maritime Blue */
            --mts-light-blue: #e0f2fe; /* Sea Foam */
            --mts-accent: #f59e0b;     /* Beacon/Sun Gold */
            --mts-text: #334155;       /* Dark Slate */
            --mts-text-light: #64748b; /* Light Slate */
            --mts-bg: #f8fafc;         /* Off-white background */
            --mts-white: #ffffff;
            --mts-border: #e2e8f0;
        }

        body {
            background-color: var(--mts-bg);
            margin: 0;
            padding: 0;
            font-family: ''Inter'', sans-serif;
            color: var(--mts-text);
            line-height: 1.7;
        }

        /* --- HERO SECTION --- */
        .m2s-hero {
            background: linear-gradient(135deg, var(--mts-navy) 0%, var(--mts-blue) 100%);
            color: var(--mts-white);
            padding: 80px 20px 60px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .m2s-hero::after {
            content: '''';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 40px;
            background: var(--mts-bg);
            clip-path: polygon(100% 0%, 0% 100%, 100% 100%);
        }

        .m2s-hero-content {
            max-width: 800px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .m2s-hero h1 {
            font-size: 3rem;
            font-weight: 800;
            margin: 0 0 15px 0;
            letter-spacing: -1px;
            color: var(--mts-accent) !important; 
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.4);
        }

        .m2s-hero p {
            font-size: 1.15rem;
            color: var(--mts-light-blue);
            margin-bottom: 0;
        }

        /* --- MAIN CONTAINER --- */
        .m2s-container {
            max-width: 1100px;
            margin: -30px auto 60px;
            padding: 0 20px;
            position: relative;
            z-index: 10;
        }

        /* --- EVENT CARDS --- */
        .m2s-event-card {
            background-color: var(--mts-white);
            border-radius: 16px;
            padding: 50px 40px 40px;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05);
            border: 1px solid var(--mts-border);
            position: relative;
            margin-bottom: 60px;
            transition: all 0.3s ease;
        }

        .m2s-event-card:hover {
            box-shadow: 0 20px 40px -10px rgba(2, 132, 199, 0.1);
        }

        .m2s-year-badge {
            position: absolute;
            top: -20px;
            left: 40px;
            background-color: var(--mts-accent);
            color: var(--mts-navy);
            font-weight: 800;
            font-size: 1.2rem;
            padding: 8px 24px;
            border-radius: 30px;
            box-shadow: 0 4px 10px rgba(245, 158, 11, 0.3);
            border: 3px solid var(--mts-white);
        }

        .m2s-event-card h2 {
            color: var(--mts-navy);
            font-size: 1.8rem;
            font-weight: 800;
            margin-top: 0;
            margin-bottom: 20px;
            border-bottom: 2px solid var(--mts-light-blue);
            padding-bottom: 15px;
        }

        .m2s-event-card p {
            margin-bottom: 20px;
            font-size: 1.05rem;
            color: var(--mts-text);
        }

        /* --- QUOTE HIGHLIGHT --- */
        .m2s-quote {
            background: var(--mts-bg);
            border-left: 5px solid var(--mts-accent);
            padding: 25px 30px;
            margin: 30px 0;
            font-style: italic;
            font-size: 1.15rem;
            border-radius: 0 10px 10px 0;
            color: var(--mts-navy);
            box-shadow: 0 4px 6px rgba(0,0,0,0.02);
            position: relative;
        }

        .m2s-quote::before {
            content: ''&quot;'';
            font-size: 4rem;
            color: var(--mts-light-blue);
            position: absolute;
            top: -10px;
            left: 15px;
            font-family: serif;
            opacity: 0.5;
        }

        /* --- FULL WIDTH BANNER --- */
        .m2s-banner-img {
            width: 100%;
            height: auto;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.08);
            margin-top: 10px;
            margin-bottom: 30px;
            display: block;
        }

        /* --- PHOTO GALLERY (POLAROID STYLE / NO CROP) --- */
        .m2s-gallery {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
            margin-top: 30px;
            align-items: start;
        }

        .m2s-figure {
            margin: 0;
            border-radius: 10px;
            background: var(--mts-white);
            border: 1px solid var(--mts-border);
            padding: 10px; 
            box-shadow: 0 4px 10px rgba(0,0,0,0.04);
            display: flex;
            flex-direction: column;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .m2s-figure:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 12px 25px rgba(0,0,0,0.1);
            z-index: 2;
        }

        .m2s-figure img {
            width: 100%;
            height: auto;
            display: block;
            border-radius: 6px;
        }

        /* --- COMPLETELY NEW MOBILE APP-STYLE FEED DESIGN --- */
        @media (max-width: 768px) {
            
            /* Clean up the Hero for edge-to-edge transition */
            .m2s-hero { 
                padding: 50px 20px; 
                clip-path: none; 
            }
            .m2s-hero::after { 
                display: none; 
            }
            .m2s-hero h1 { 
                font-size: 2.2rem; 
                line-height: 1.2;
            }

            .m2s-container {
                margin: 0;
                padding: 0;
            }

            /* REMOVED PADDING HERE so images can stretch full width naturally */
            .m2s-event-card {
                border: none;
                border-radius: 0;
                box-shadow: none;
                margin-bottom: 0;
                padding: 40px 0px; 
                border-bottom: 8px solid var(--mts-border); 
            }
            .m2s-event-card:last-child {
                border-bottom: none;
            }

            /* Added left margin so the badge doesn''t touch the screen edge */
            .m2s-year-badge {
                position: relative;
                top: auto;
                left: auto;
                display: inline-block;
                padding: 4px 12px;
                font-size: 0.85rem;
                letter-spacing: 1px;
                background: var(--mts-light-blue);
                color: var(--mts-blue);
                border: none;
                border-radius: 6px;
                box-shadow: none;
                margin-bottom: 12px;
                margin-left: 20px; 
                text-transform: uppercase;
            }

            /* Added side padding back to text elements only */
            .m2s-event-card h2 {
                font-size: 1.65rem;
                border-bottom: none;
                padding-bottom: 0;
                margin-bottom: 15px;
                line-height: 1.2;
                padding-left: 20px;
                padding-right: 20px;
            }
            .m2s-event-card p {
                font-size: 1rem;
                margin-bottom: 15px;
                padding-left: 20px;
                padding-right: 20px;
            }

            /* Added side margin to the Quote block so it doesn''t touch edges */
            .m2s-quote { 
                padding: 20px; 
                font-size: 1.05rem; 
                margin: 30px 20px; 
            }

            /* Banner completely full width naturally */
            .m2s-banner-img {
                width: 100%; 
                margin-left: 0;
                margin-right: 0;
                border-radius: 0;
                box-shadow: none;
                margin-bottom: 20px;
            }

            /* 1 IMAGE AT A TIME (1fr) &amp; FULL WIDTH naturally */
            .m2s-gallery {
                grid-template-columns: 1fr; /* 1 column layout */
                gap: 8px; /* Slight gap between stacked photos */
                margin-top: 25px;
                width: 100%; 
                margin-left: 0;
                margin-right: 0;
            }

            /* Strip away the polaroid styling */
            .m2s-figure {
                padding: 0;
                border: none;
                border-radius: 0;
                box-shadow: none;
                background: transparent;
            }
            .m2s-figure:hover { 
                transform: none; 
                box-shadow: none; 
            }

            /* Removed force crop so images display correctly */
            .m2s-figure img {
                border-radius: 0;
                width: 100%;
                height: auto; 
                aspect-ratio: auto; 
                object-fit: cover; 
            }
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;

    &lt;!-- Elevated Hero Header --&gt;
    &lt;header class=&quot;m2s-hero&quot;&gt;
        &lt;div class=&quot;m2s-hero-content&quot;&gt;
            &lt;h1&gt;International Women’s Day&lt;/h1&gt;
            &lt;p&gt;Celebrating the vital contributions of women seafarers and the dedicated ladies of the Halifax Mission.&lt;/p&gt;
        &lt;/div&gt;
    &lt;/header&gt;

    &lt;!-- Main Content Area --&gt;
    &lt;main class=&quot;m2s-container&quot;&gt;

        &lt;!-- 2022 Event Card --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2022&lt;/div&gt;
            &lt;h2&gt;International Women’s Day at the Halifax Mission&lt;/h2&gt;
            &lt;p&gt;The ladies of the Halifax Mission are at the heart of the organization’s operation and service to the seafarers. Their indispensable contributions are appreciated.&lt;/p&gt;
            &lt;p&gt;Equally important is the recognition of the hard work and sacrifice of all women seafarers whose labour amid the global pandemic and conflicts between people have kept going international trade and the global economy.&lt;/p&gt;
            
            &lt;div class=&quot;m2s-gallery&quot;&gt;
                &lt;!-- Image 1 --&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/International-Womens-Day-2022-003.jpg&quot; alt=&quot;International Women''s Day 2022&quot;&gt;
                &lt;/figure&gt;
                &lt;!-- Image 2 --&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/International-Womens-Day-1536x1068.jpg&quot; alt=&quot;International Women''s Day Volunteers&quot;&gt;
                &lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- Celebrating Women Seafarers Card --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;July 2022&lt;/div&gt;
            &lt;h2&gt;Celebrating Women Seafarers&lt;/h2&gt;
            &lt;p&gt;On 06 July 2022, our Rev. Andrew Cooke went aboard the ZIM SHEKOU in Halifax harbour and presented a white Christmas cactus to Captain Shani Ben-David, the first female Captain of a ZIM vessel and the first female Captain in the Israeli Merchant Marine. This was her inaugural visit to Halifax in command.&lt;/p&gt;
            
            &lt;div class=&quot;m2s-quote&quot;&gt;
                Retired ZIM Captain Avi Lugi Gal, a friend and supporter of the Mission in Halifax, mentored her through the ranks and thinks fondly of her “as a daughter”. He stated “she is one of the ladies who are lighting the torch in the dark”.
            &lt;/div&gt;

            &lt;p&gt;Captain Shani Ben-David was appointed as Master of the ZIM SHEKOU in May of 2022, which coincidentally is the month in which the International Day for Women in Maritime occurs. Congratulations to Captain Shani Ben-David, we wish her fair winds and following seas as she lights for the way for other women to follow a career in the sea-going profession.&lt;/p&gt;
            &lt;p&gt;Thank you as well to our volunteers, who visit the ships in our port to help realize our mission to serve all seafarers.&lt;/p&gt;

            &lt;!-- Image 3 (Banner Style) --&gt;
            &lt;img class=&quot;m2s-banner-img&quot; src=&quot;/uploads/Captain-Ben-David-3-1024x737.jpg&quot; alt=&quot;Captain Shani Ben-David&quot;&gt;
        &lt;/div&gt;

    &lt;/main&gt;

&lt;/body&gt;
&lt;/html&gt;" style="margin: 1.5rem 0px;"></div><p></p>', NULL, 1, '2026-05-25 14:00:00', '2026-06-16 12:58:44');

INSERT INTO events (id, title, url, content, event_date, is_featured, created_at, updated_at) VALUES
(21, 'Volunteer Appreciation', '2025-volunteer-appreciation', '<div data-html-block="true" data-html-content="&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;
    &lt;title&gt;Annual Volunteer Appreciation - Mission to Seafarers&lt;/title&gt;
    &lt;link href=&quot;https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;800&amp;display=swap&quot; rel=&quot;stylesheet&quot;&gt;
    &lt;style&gt;
        /* --- Modern, Scoped CSS Theme --- */
        :root {
            --mts-navy: #0a2540;       /* Deep Ocean Night */
            --mts-blue: #0284c7;       /* Maritime Blue */
            --mts-light-blue: #e0f2fe; /* Sea Foam */
            --mts-accent: #f59e0b;     /* Beacon/Sun Gold */
            --mts-text: #334155;       /* Dark Slate */
            --mts-text-light: #64748b; /* Light Slate */
            --mts-bg: #f8fafc;         /* Off-white background */
            --mts-white: #ffffff;
            --mts-border: #e2e8f0;
        }

        body {
            background-color: var(--mts-bg);
            margin: 0;
            padding: 0;
            font-family: ''Inter'', sans-serif;
            color: var(--mts-text);
            line-height: 1.7;
        }

        /* --- HERO SECTION --- */
        .m2s-hero {
            background: linear-gradient(135deg, var(--mts-navy) 0%, var(--mts-blue) 100%);
            color: var(--mts-white);
            padding: 80px 20px 60px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .m2s-hero::after {
            content: '''';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 40px;
            background: var(--mts-bg);
            clip-path: polygon(100% 0%, 0% 100%, 100% 100%);
        }

        .m2s-hero-content {
            max-width: 800px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .m2s-hero h1 {
            font-size: 3rem;
            font-weight: 800;
            margin: 0 0 15px 0;
            letter-spacing: -1px;
            color: var(--mts-accent) !important; 
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.4);
        }

        .m2s-hero p {
            font-size: 1.15rem;
            color: var(--mts-light-blue);
            margin-bottom: 0;
        }

        /* --- MAIN CONTAINER --- */
        .m2s-container {
            max-width: 1100px;
            margin: -30px auto 60px;
            padding: 0 20px;
            position: relative;
            z-index: 10;
        }

        /* --- EVENT CARDS --- */
        .m2s-event-card {
            background-color: var(--mts-white);
            border-radius: 16px;
            padding: 50px 40px 40px;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05);
            border: 1px solid var(--mts-border);
            position: relative;
            margin-bottom: 60px;
            transition: all 0.3s ease;
        }

        .m2s-event-card:hover {
            box-shadow: 0 20px 40px -10px rgba(2, 132, 199, 0.1);
        }

        .m2s-year-badge {
            position: absolute;
            top: -20px;
            left: 40px;
            background-color: var(--mts-accent);
            color: var(--mts-navy);
            font-weight: 800;
            font-size: 1.3rem;
            padding: 8px 24px;
            border-radius: 30px;
            box-shadow: 0 4px 10px rgba(245, 158, 11, 0.3);
            border: 3px solid var(--mts-white);
        }

        .m2s-event-card h2 {
            color: var(--mts-navy);
            font-size: 1.8rem;
            font-weight: 800;
            margin-top: 0;
            margin-bottom: 20px;
            border-bottom: 2px solid var(--mts-light-blue);
            padding-bottom: 15px;
        }

        .m2s-event-card p {
            margin-bottom: 20px;
            font-size: 1.05rem;
            color: var(--mts-text);
        }

        /* Full width banner image inside card */
        .m2s-banner-img {
            width: 100%;
            height: auto;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.08);
            margin-bottom: 30px;
            display: block;
        }

        /* --- PHOTO GALLERY (POLAROID STYLE) --- */
        .m2s-gallery {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
            gap: 20px;
            margin-top: 30px;
            align-items: start; /* Prevents vertical stretching, preserves aspect ratios */
        }

        .m2s-figure {
            margin: 0;
            border-radius: 10px;
            background: var(--mts-white);
            border: 1px solid var(--mts-border);
            padding: 8px; /* Creates the white photo border */
            box-shadow: 0 4px 6px rgba(0,0,0,0.04);
            display: flex;
            flex-direction: column;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .m2s-figure:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 12px 20px rgba(0,0,0,0.1);
            z-index: 2;
        }

        .m2s-figure img {
            width: 100%;
            height: auto; /* Displays full image without cropping */
            display: block;
            border-radius: 6px;
        }

        .m2s-figcaption {
            padding: 12px 5px 5px;
            text-align: center;
            font-size: 0.9rem;
            color: var(--mts-text-light);
            font-weight: 500;
            font-style: italic;
            line-height: 1.4;
        }

        /* --- COMPLETELY NEW MOBILE APP-STYLE FEED DESIGN --- */
        @media (max-width: 768px) {
            
            /* Clean up the Hero for edge-to-edge transition */
            .m2s-hero { 
                padding: 50px 20px; 
                clip-path: none; 
            }
            .m2s-hero::after { 
                display: none; 
            }
            .m2s-hero h1 { 
                font-size: 2.2rem; 
                line-height: 1.2;
            }

            .m2s-container {
                margin: 0;
                padding: 0;
            }

            /* REMOVED PADDING HERE so images can stretch full width naturally */
            .m2s-event-card {
                border: none;
                border-radius: 0;
                box-shadow: none;
                margin-bottom: 0;
                padding: 40px 0px; 
                border-bottom: 8px solid var(--mts-border); 
            }
            .m2s-event-card:last-child {
                border-bottom: none;
            }

            /* Added left margin so the badge doesn''t touch the screen edge */
            .m2s-year-badge {
                position: relative;
                top: auto;
                left: auto;
                display: inline-block;
                padding: 4px 12px;
                font-size: 0.85rem;
                letter-spacing: 1px;
                background: var(--mts-light-blue);
                color: var(--mts-blue);
                border: none;
                border-radius: 6px;
                box-shadow: none;
                margin-bottom: 12px;
                margin-left: 20px; 
                text-transform: uppercase;
            }

            /* Added side padding back to text elements only */
            .m2s-event-card h2 {
                font-size: 1.65rem;
                border-bottom: none;
                padding-bottom: 0;
                margin-bottom: 15px;
                line-height: 1.2;
                padding-left: 20px;
                padding-right: 20px;
            }
            .m2s-event-card p {
                font-size: 1rem;
                margin-bottom: 15px;
                padding-left: 20px;
                padding-right: 20px;
            }

            /* Banner completely full width naturally */
            .m2s-banner-img {
                width: 100%; 
                margin-left: 0;
                margin-right: 0;
                border-radius: 0;
                box-shadow: none;
                margin-bottom: 20px;
            }

            /* 1 IMAGE AT A TIME (1fr) &amp; FULL WIDTH naturally */
            .m2s-gallery {
                grid-template-columns: 1fr; /* 1 column layout */
                gap: 8px; /* Slight gap between stacked photos */
                margin-top: 25px;
                width: 100%; 
                margin-left: 0;
                margin-right: 0;
            }

            /* Strip away the polaroid styling */
            .m2s-figure {
                padding: 0;
                border: none;
                border-radius: 0;
                box-shadow: none;
                background: transparent;
            }
            .m2s-figure:hover { 
                transform: none; 
                box-shadow: none; 
            }

            /* Removed 1/1 force crop so images display correctly */
            .m2s-figure img {
                border-radius: 0;
                width: 100%;
                height: auto; 
                aspect-ratio: auto; 
                object-fit: cover; 
            }

            /* Adjust captions for the grid layout and match text padding */
            .m2s-figcaption {
                font-size: 0.85rem;
                padding: 10px 20px 15px;
                background: var(--mts-bg);
                text-align: left;
            }
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;

    &lt;!-- Elevated Hero Header --&gt;
    &lt;header class=&quot;m2s-hero&quot;&gt;
        &lt;div class=&quot;m2s-hero-content&quot;&gt;
            &lt;h1&gt;Annual Volunteer Appreciation&lt;/h1&gt;
            &lt;p&gt;Celebrating the dedication, passion, and hard work of our amazing volunteers who support seafarers worldwide.&lt;/p&gt;
        &lt;/div&gt;
    &lt;/header&gt;

    &lt;!-- Main Content Area --&gt;
    &lt;main class=&quot;m2s-container&quot;&gt;

        &lt;!-- 2026 Upcoming Event --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2026&lt;/div&gt;
            &lt;h2&gt;Upcoming Event&lt;/h2&gt;
            &lt;img class=&quot;m2s-banner-img&quot; src=&quot;/uploads/9f139b6d-1fdf-4f57-9907-7f66317dcf00.webp&quot; alt=&quot;2026 Upcoming Event&quot;&gt;
        &lt;/div&gt;


        &lt;!-- 2025 Volunteer Appreciation --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2025&lt;/div&gt;
            &lt;h2&gt;Volunteer Appreciation&lt;/h2&gt;
            
            &lt;div class=&quot;m2s-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Screenshot-2025-05-23-112312-1024x758.png&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2083-1024x640.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2028-1024x768.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2038-300x225.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2045-300x225.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2048-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2067-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2064-300x188.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2060-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2089-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2081-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2074-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2093-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2097-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2023-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2008-300x225.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2071-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2055-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2010-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2057-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2019-300x225.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2070-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/LG2_2013-300x200.jpg&quot; alt=&quot;2025 Volunteer Appreciation&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2024 Volunteer Appreciation and Christmas Party --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2024&lt;/div&gt;
            &lt;h2&gt;Appreciation &amp; Christmas Party&lt;/h2&gt;
            &lt;p&gt;This year’s celebration is the first since the COVID-19 pandemic. This occasion not only brought together the volunteers and staff but also revived the practice of exchanging gifts through a fun-filled gift exchange game.&lt;/p&gt;
            
            &lt;div class=&quot;m2s-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/IMG_20241128_181449895_HDR-300x226.jpg&quot; alt=&quot;2024 Christmas Party&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/IMG_20241128_181427198_HDR-300x226.jpg&quot; alt=&quot;2024 Christmas Party&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/IMG_20241128_181417556_HDR-300x226.jpg&quot; alt=&quot;2024 Christmas Party&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/IMG_20241128_183142136_HDR-300x226.jpg&quot; alt=&quot;2024 Christmas Party&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/IMG_20241128_182141364_HDR-226x300.jpg&quot; alt=&quot;2024 Christmas Party&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/IMG_20241128_182542084_HDR-300x226.jpg&quot; alt=&quot;2024 Christmas Party&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/IMG_20241128_191108862_HDR-768x578.jpg&quot; alt=&quot;Glenn telling a Christmas story&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Glenn telling a Christmas story and directing the gift exchange&lt;/figcaption&gt;
                &lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/IMG_20241128_193258507_HDR-768x1020.jpg&quot; alt=&quot;Ugliest Christmas sweater&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Joy was voted as having the ugliest Christmas sweater&lt;/figcaption&gt;
                &lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2024 Volunteer Appreciation (General) --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2024&lt;/div&gt;
            &lt;h2&gt;Summer Volunteer Appreciation&lt;/h2&gt;
            &lt;p&gt;This year’s appreciation of the Volunteers’ contribution to the successful delivery of services to seafarers was held at the Mission to Seafarers – Halifax Centre. MtS Secretary General Reverend Canon Andrew Wright and Regional Director Reverend Judith Altree attended the affair. They spoke of the international recognition and respect for the Volunteers at the Halifax Mission whose passion and dedication have also gained the delight and appreciation of many seafarers.&lt;/p&gt;
            &lt;p&gt;Also attending were NAMMA Executive Director Dr. Jason Zuidema and Archbishop David Edwards, and Reverend Eric Phinney from New Brunswick. In a pleasant surprise, Halifax MP Andy Fillmore dropped by straight from the airport.&lt;/p&gt;
            
            &lt;div class=&quot;m2s-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Andrew-300x225.jpg&quot; alt=&quot;Andrew&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Revd-Andrew-300x225.jpg&quot; alt=&quot;Revd Andrew&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Bud-and-Judith-300x225.jpg&quot; alt=&quot;Bud and Judith&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/With-Filmore-300x225.jpg&quot; alt=&quot;With Filmore&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Bud-300x225.jpg&quot; alt=&quot;Bud&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Andrew-C-300x225.jpg&quot; alt=&quot;Andrew C&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Food-300x225.jpg&quot; alt=&quot;Food&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Dianne-Carolyn-Joy-Elizabeth-Joseph-Jason-Max-Michael-300x225.jpg&quot; alt=&quot;Group Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Paul-Elizabeth-Jason-Sandra-Jim-300x225.jpg&quot; alt=&quot;Group Photo&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/Jason-Flinn-and-the-infamous-Norman-Picton-300x225.jpg&quot; alt=&quot;Jason Flinn and Norman Picton&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Jason Flinn and Norman Picton&lt;/figcaption&gt;
                &lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/Revd-Andrew-Cooke-Revd-Heather-MacEachern-300x225.jpg&quot; alt=&quot;Revd Andrew Cooke and Revd Heather MacEachern&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;Revd Andrew Cooke &amp; Revd Heather MacEachern&lt;/figcaption&gt;
                &lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- 2023 Volunteer Appreciation --&gt;
        &lt;div class=&quot;m2s-event-card&quot;&gt;
            &lt;div class=&quot;m2s-year-badge&quot;&gt;2023&lt;/div&gt;
            &lt;h2&gt;Government House Reception&lt;/h2&gt;
            &lt;img class=&quot;m2s-banner-img&quot; src=&quot;/uploads/Grateful-to-Their-Honours-for-hosting-a-Volunteer-Appreciation-for-MtS-Halifax-768x469.jpg&quot; alt=&quot;Their Honours hosting Volunteer Appreciation&quot;&gt;
            
            &lt;p&gt;On 20 April 2023, Their Honours hosted a reception for the Volunteers and Board Members of the Mission to Seafarers Halifax at the Government House. As the Honorary Patron of the Mission to Seafarers Halifax, The Honourable Arthur LeBlanc thanked and recognized the role of the volunteers and members of the board in promoting the welfare of seafarers.&lt;/p&gt;
            &lt;p&gt;Also attending the event is the Mission to Seafarers Regional Director, Reverend Judith Altree, who is officially visiting the Mission to Seafarers Halifax. Reverend Altree spoke about the essential function of the volunteers in the Mission to promote the well-being of seafarers.&lt;/p&gt;

            &lt;div class=&quot;m2s-gallery&quot;&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/His-Honour-Lt-Gov-Arthur-Leblanc-768x597.jpg&quot; alt=&quot;His Honour The Honourable Arthur J. LeBlanc&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;His Honour The Honourable Arthur J. LeBlanc&lt;/figcaption&gt;
                &lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/Revd-Judith-Alltree-Regional-Director-of-Canada-MtS-768x597.jpg&quot; alt=&quot;Reverend Judith Altree&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;MtS Regional Director Rev. Judith Altree&lt;/figcaption&gt;
                &lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;
                    &lt;img src=&quot;/uploads/Sandra-Attersley_-002-768x597.jpg&quot; alt=&quot;Sandra Attersley&quot;&gt;
                    &lt;figcaption class=&quot;m2s-figcaption&quot;&gt;MtS Halifax Treasurer Sandra Attersley&lt;/figcaption&gt;
                &lt;/figure&gt;
                
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/His-Honour-and-board-member-Ric-Hattin-768x512.jpg&quot; alt=&quot;His Honour and board member Ric Hattin&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/His-Honour-and-Deacon-Art-Mitchell-768x512.jpg&quot; alt=&quot;His Honour and Deacon Art Mitchell&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/His-Honour-and-Joy-768x597.jpg&quot; alt=&quot;His Honour and Joy&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/His-Honour-Elaine-and-Peter-Selig-768x512.jpg&quot; alt=&quot;His Honour, Elaine and Peter Selig&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Her-Honour-Mrs.-Patsy-Leblanc-with-Dylan-Sandra-Bud-and-Jim--768x512.jpg&quot; alt=&quot;Her Honour Mrs. Patsy Leblanc with Dylan, Sandra, Bud, and Jim&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Susan-and-Patsy-Leblanc-768x597.jpg&quot; alt=&quot;Susan and Patsy Leblanc&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Patsy-Leblanc-Glenn-and-Peggy-Taylor-1-768x512.jpg&quot; alt=&quot;Patsy Leblanc, Glenn, and Peggy Taylor&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Helen-Glenn-RD-Revd-Judith-Alltree-Deacon-Art-Mitchell-768x512.jpg&quot; alt=&quot;Helen, Glenn, Revd Judith Alltree, Deacon Art Mitchell&quot;&gt;&lt;/figure&gt;
                &lt;figure class=&quot;m2s-figure&quot;&gt;&lt;img src=&quot;/uploads/Aurora-Palma-and-Captain-James-Parsons-768x512.jpg&quot; alt=&quot;Aurora Palma and Captain James Parsons&quot;&gt;&lt;/figure&gt;
            &lt;/div&gt;
        &lt;/div&gt;

    &lt;/main&gt;

&lt;/body&gt;
&lt;/html&gt;" style="margin: 1.5rem 0px;"></div><p></p>', '2026-09-29 00:00:00', 1, '2026-05-25 15:00:00', '2026-08-25 08:20:55'),
(22, 'Seafarers COVID-19 Vaccination Initiative', 'seafarers-covid-19-vaccination-initiative', '<div data-html-block="true" data-html-content="&lt;style&gt;
    /* Scoped CSS to prevent interfering with your website''s main theme */
    .m2s-vaccine-wrapper {
        max-width: 1000px;
        margin: 0 auto;
        font-family: Arial, Helvetica, sans-serif;
        color: #333;
        line-height: 1.6;
    }

    .m2s-vaccine-wrapper h1 {
        text-align: center;
        color: #005b96;
        margin-bottom: 40px;
        font-size: 36px;
        border-bottom: 2px solid #005b96;
        padding-bottom: 10px;
    }

    .m2s-vaccine-wrapper p {
        margin-bottom: 15px;
        font-size: 16px;
    }

    .m2s-event-card {
        background: #ffffff;
        border: 1px solid #e0e0e0;
        border-radius: 10px;
        padding: 30px;
        margin-bottom: 40px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.05);
    }

    /* Highlight box for the partnership announcement */
    .m2s-highlight-box {
        background: #f4f9fc;
        border-left: 5px solid #005b96;
        padding: 20px;
        border-radius: 5px;
        margin: 25px 0;
        font-weight: bold;
        color: #005b96;
        font-size: 18px;
        text-align: center;
    }

    /* Flexbox Gallery for Natural Image Sizing (No Cropping) */
    .m2s-natural-gallery {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        margin-top: 30px;
    }

    .m2s-natural-figure {
        flex: 1 1 300px; /* Allows images to size naturally side-by-side */
        margin: 0;
        border-radius: 8px;
        background: #f9f9f9;
        border: 1px solid #eee;
        overflow: hidden;
        display: flex;
        align-items: center; /* Centers image vertically if heights differ */
    }

    .m2s-natural-figure img {
        width: 100%;
        height: auto; /* Shows the full image without cutting anything off */
        display: block;
        transition: transform 0.3s ease;
    }

    .m2s-natural-figure:hover img {
        transform: scale(1.03);
    }
&lt;/style&gt;

&lt;div class=&quot;m2s-vaccine-wrapper&quot;&gt;

    &lt;h1&gt;COVID-19 Vaccination Initiative&lt;/h1&gt;

    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;p&gt;This initiative started in July 2021 in support of all seafarers whose essential work keeps economies operating amid the global pandemic. In coordination with the ship Master and/or Agents, we continue to facilitate the first and second doses of COVID-19 vaccination in Halifax of seafarers, especially those onboard international vessels.&lt;/p&gt;

        &lt;p&gt;Procedurally, ship Masters and/or Agents contact us regarding the need to get crew members vaccinated and the schedule of the ship’s arrival. We then set a schedule with pharmacies or identify walk-in clinics (considering the number of crew and availability of doses). On the ship’s arrival, we deliver to the vessel the rapid test kits, which results are available in about 15 minutes. When results are negative, we transport or facilitate the transport (depending on the availability of the Mission van) of seafarers to the vaccination site and back to the ship.&lt;/p&gt;

        &lt;p&gt;This initiative is no longer active presently in the absence of seafarers’ demand for vaccination. However, should the need arise, we will endeavour to connect with provincial health authorities and our private health provider partners to ensure the seafarers get the health protection they need.&lt;/p&gt;

        &lt;div class=&quot;m2s-highlight-box&quot;&gt;
            We are proud to partner with the Pharmacy Association of Nova Scotia and the Nova Scotia Health Authority on this initiative!
        &lt;/div&gt;

        &lt;div class=&quot;m2s-natural-gallery&quot;&gt;
            &lt;figure class=&quot;m2s-natural-figure&quot;&gt;
                &lt;img src=&quot;/uploads/Jame-Orig-first-crew-of-IT-Integrity-to-be-vaccinated-1152x1536.jpg&quot; alt=&quot;First crew of IT Integrity to be vaccinated&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-natural-figure&quot;&gt;
          &lt;img src=&quot;/uploads/IMG_20210830_125550-1536x1152.jpg&quot; alt=&quot;Seafarer getting vaccinated&quot;&gt;
            &lt;/figure&gt;
            &lt;figure class=&quot;m2s-natural-figure&quot;&gt;
                &lt;img src=&quot;/uploads/IT-INTEGRITY-CREW-VACCINATED-JULY-26TH-rotated.jpg&quot; alt=&quot;IT Integrity Crew Vaccinated&quot;&gt;
            &lt;/figure&gt;
        &lt;/div&gt;
    &lt;/div&gt;

&lt;/div&gt;" style="margin: 1.5rem 0px;"></div><p></p>', NULL, 1, '2026-05-25 13:00:00', '2026-06-16 13:06:41'),
(25, 'Cruise Prize Raffle', 'cruise-prize-raffle', '<div data-html-block="true" data-html-content="&lt;style&gt;
    /* Scoped CSS for Embark on a Voyage Event Page */
    .m2s-voyage-wrapper {
        max-width: 1000px;
        margin: 0 auto;
        font-family: Arial, Helvetica, sans-serif;
        color: #333;
        line-height: 1.6;
    }

    .m2s-voyage-wrapper p {
        margin-bottom: 16px;
        font-size: 16px;
    }

    .m2s-hero-section {
        text-align: center;
        margin-bottom: 40px;
        padding-bottom: 25px;
        border-bottom: 2px solid #005b96;
    }

    .m2s-hero-title {
        color: #002d54;
        font-size: 32px;
        font-weight: 800;
        margin-bottom: 5px;
        letter-spacing: 0.5px;
        text-transform: uppercase;
    }

    .m2s-hero-subtitle {
        color: #ff6b6b;
        font-size: 20px;
        font-weight: 700;
        margin-bottom: 20px;
    }

    .m2s-hero-img {
        max-width: 100%;
        height: auto;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.12);
        margin-top: 15px;
    }

    .m2s-content-card {
        background: #ffffff;
        border: 1px solid #e0e0e0;
        border-radius: 12px;
        padding: 30px;
        margin-bottom: 35px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
    }

    .m2s-highlight-box {
        background-color: #fff4f4;
        border-left: 4px solid #ff6b6b;
        padding: 16px 20px;
        margin: 20px 0;
        border-radius: 0 8px 8px 0;
        font-weight: 700;
        color: #002d54;
        font-size: 17px;
    }

    .m2s-quote-card {
        background: linear-gradient(135deg, #002d54 0%, #005b96 100%);
        color: #ffffff;
        border-radius: 12px;
        padding: 30px;
        margin-bottom: 35px;
        box-shadow: 0 6px 20px rgba(0, 45, 84, 0.2);
    }

    .m2s-quote-text {
        font-size: 17px;
        font-style: italic;
        line-height: 1.7;
        margin-bottom: 15px;
        color: #f0f4f8;
    }

    .m2s-quote-author {
        font-weight: 700;
        font-size: 15px;
        color: #ff6b6b;
        text-align: right;
    }

    .m2s-details-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
        gap: 20px;
        margin: 30px 0;
    }

    .m2s-detail-box {
        background: #f8fafc;
        border: 1px solid #e2e8f0;
        border-radius: 10px;
        padding: 20px;
        text-align: center;
    }

    .m2s-detail-label {
        font-size: 13px;
        font-weight: 700;
        color: #64748b;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        margin-bottom: 6px;
    }

    .m2s-detail-value {
        font-size: 18px;
        font-weight: 800;
        color: #002d54;
    }

    .m2s-cta-container {
        text-align: center;
        margin-top: 40px;
        margin-bottom: 20px;
        padding: 30px;
        background: #f8fafc;
        border-radius: 12px;
        border: 2px dashed #005b96;
    }

    .m2s-button {
        display: inline-block;
        background-color: #ff6b6b;
        color: #ffffff !important;
        font-size: 18px;
        font-weight: 700;
        text-decoration: none;
        padding: 16px 36px;
        border-radius: 50px;
        box-shadow: 0 4px 15px rgba(255, 107, 107, 0.4);
        transition: all 0.3s ease;
    }

    .m2s-button:hover {
        background-color: #e05252;
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(255, 107, 107, 0.6);
    }
&lt;/style&gt;

&lt;div class=&quot;m2s-voyage-wrapper&quot;&gt;

    &lt;!-- Hero Header Section --&gt;
    &lt;div class=&quot;m2s-hero-section&quot;&gt;
        &lt;h1 class=&quot;m2s-hero-title&quot;&gt;EMBARK ON A VOYAGE&lt;/h1&gt;
        &lt;div class=&quot;m2s-hero-subtitle&quot;&gt;A tribute to Gordon Smith&lt;/div&gt;
        &lt;img src=&quot;/uploads/96d2b100-e640-4eaa-a624-47f82e1a06ae.webp&quot;
            alt=&quot;Embark On A Voyage - A tribute to Gordon Smith&quot; class=&quot;m2s-hero-img&quot;&gt;
    &lt;/div&gt;

    &lt;!-- Main Description Card --&gt;
    &lt;div class=&quot;m2s-content-card&quot;&gt;
        &lt;p&gt;Victory Cruise Lines® &amp;amp; Mission to Seafarers Halifax invites you to experience the unparalleled intimacy of small-ship cruising along North America’s most captivating waterways. Our meticulously crafted itineraries traverse the grandeur of the Great Lakes and the enchanting allure of the Canadian Maritimes. Aboard our elegantly appointed Victory I® and Victory II®, you’ll discover a world of secluded harbors, pristine coastlines, and serene seaways—destinations often inaccessible to larger vessels. Prepare to embark on a journey that redefines comfort and exploration.&lt;/p&gt;
        
        &lt;div class=&quot;m2s-highlight-box&quot;&gt;
            ✈️ MtS Halifax will pay for flight to departure destination.
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- CEO Quote Card --&gt;
    &lt;div class=&quot;m2s-quote-card&quot;&gt;
        &lt;div class=&quot;m2s-quote-text&quot;&gt;
            &quot;Victory Cruise Lines proudly honors the legacy of Gordon Smith—a man whose unwavering dedication to his family, community, and fellow mariners left an enduring impact. Seafarers are a remarkable community, serving as steadfast stewards of the waterways and all who navigate them. Gordon embodied that spirit throughout his life, and his legacy will continue to inspire all who follow in his wake.&quot;
        &lt;/div&gt;
        &lt;div class=&quot;m2s-quote-author&quot;&gt;
            — John Waggoner, Founder and CEO
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Ticket &amp; Draw Details Grid --&gt;
    &lt;div class=&quot;m2s-event-card&quot;&gt;
        &lt;h2 style=&quot;color: #005b96; margin-top: 0; margin-bottom: 15px; font-size: 24px; border-bottom: 1px solid #eee; padding-bottom: 10px;&quot;&gt;Raffle &amp;amp; Ticket Details&lt;/h2&gt;
        
        &lt;div class=&quot;m2s-details-grid&quot;&gt;
            &lt;div class=&quot;m2s-detail-box&quot;&gt;
                &lt;div class=&quot;m2s-detail-label&quot;&gt;Ticket Sale Ends&lt;/div&gt;
                &lt;div class=&quot;m2s-detail-value&quot;&gt;December 4, 2026&lt;/div&gt;
            &lt;/div&gt;
            &lt;div class=&quot;m2s-detail-box&quot;&gt;
                &lt;div class=&quot;m2s-detail-label&quot;&gt;Draw Date / Location&lt;/div&gt;
                &lt;div class=&quot;m2s-detail-value&quot;&gt;December 9, 2026&lt;/div&gt;
                &lt;div style=&quot;font-size: 14px; color: #ff6b6b; font-weight: bold; mt-1;&quot;&gt;at Pier 21&lt;/div&gt;
            &lt;/div&gt;
            &lt;div class=&quot;m2s-detail-box&quot;&gt;
                &lt;div class=&quot;m2s-detail-label&quot;&gt;Ticket Prices&lt;/div&gt;
                &lt;div class=&quot;m2s-detail-value&quot;&gt;1 for $50&lt;/div&gt;
                &lt;div style=&quot;font-size: 14px; color: #005b96; font-weight: bold;&quot;&gt;or 3 for $125&lt;/div&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;!-- Call To Action Button --&gt;
        &lt;div class=&quot;m2s-cta-container&quot;&gt;
            &lt;a href=&quot;https://rafflebox.ca/raffle/mission-to-seafarers-halifax/&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot; class=&quot;m2s-button&quot;&gt;
                For Details and Purchase Tickets
            &lt;/a&gt;
        &lt;/div&gt;
    &lt;/div&gt;

&lt;/div&gt;" style="margin: 1.5rem 0px;"></div><p></p>', '2026-12-09 00:00:00', 1, '2026-07-24 06:14:03', '2026-07-24 15:03:33');

INSERT INTO prayers (id, first_name, last_name, prayer_request, is_approved, created_at, updated_at) VALUES
(8, 'Aisosa', 'Okundaye', 'Dear God our Heavenly Father. I pray that you continue to watch over your children who are currently on sea, making the sacrifices they do, i pray that your grace, mercy, love and spirit will fine them. Be their guide &amp; protector and grant them your favour and blessings. Amen', 1, '2026-05-25 21:33:05', '2026-05-25 21:33:05'),
(9, 'Trever', 'Gray', 'Hi, I’m Trever Gray, the founder of Send Proud. We help businesses achieve measurable results like booked meetings, website traffic, and user sign-ups through highly targeted outreach powered by our database of 500M+ professional profiles and 250M+ company profiles. On our call, we’ll walk you through a clear strategy tailored specifically to your goals, whether that’s booked meetings, traffic, user sign-ups, or another measurable outcome that matters to your business. You choose the result, and we build the system to deliver it. We’re confident in our ability to execute, and if we fall short by even one agreed result, we’ll refund you in full. You can schedule a time here: https:&#x2F;&#x2F;calendly.com&#x2F;sendproud&#x2F;30min', 1, '2026-07-13 13:42:14', '2026-07-13 13:42:14'),
(10, 'Trever', 'Gray', 'Hi, I’m Trever Gray, the founder of Send Proud. We help businesses achieve measurable results like booked meetings, website traffic, and user sign-ups through highly targeted outreach powered by our database of 500M+ professional profiles and 250M+ company profiles. On our call, we’ll walk you through a clear strategy tailored specifically to your goals, whether that’s booked meetings, traffic, user sign-ups, or another measurable outcome that matters to your business. You choose the result, and we build the system to deliver it. We’re confident in our ability to execute, and if we fall short by even one agreed result, we’ll refund you in full. You can schedule a time here: https:&#x2F;&#x2F;calendly.com&#x2F;sendproud&#x2F;30min', 1, '2026-07-13 13:42:55', '2026-07-13 13:42:55'),
(11, 'Hannah', 'Melotto', 'Hi, I’m Hannah from Melotto Group. We help businesses redesign their websites and improve their content so they look more polished and convert better. I took a quick look at your site and saw a few opportunities to improve the design and messaging, and I think now could be a great time to explore a new or refreshed website. I’d be happy to share a few quick ideas. Grab a time here:⁠ http:&#x2F;&#x2F;calendar.melottogroup.com&#x2F;', 1, '2026-07-28 17:08:45', '2026-07-28 17:08:45'),
(12, 'Hannah', 'Melotto', 'Hi, I’m Hannah from Melotto Group. We help businesses redesign their websites and improve their content so they look more polished and convert better. I took a quick look at your site and saw a few opportunities to improve the design and messaging, and I think now could be a great time to explore a new or refreshed website. I’d be happy to share a few quick ideas. Grab a time here:⁠ http:&#x2F;&#x2F;calendar.melottogroup.com&#x2F;', 1, '2026-07-28 17:09:32', '2026-07-28 17:09:32'),
(13, 'Hannah', 'Melotto', 'Hey! Do you have any use for a freelance writer? I have nearly a decade of experience and can help with pretty much any type of content, including blog posts, case studies, press releases, thought leadership, articles, and much more. I&#x27;m currently looking for new opportunities and would love to see if you have any writing projects I could help with. You can book a time with me to chat if interested. Hoping to connect! https:&#x2F;&#x2F;calendly.com&#x2F;melottogroup&#x2F;30min', 1, '2026-09-01 17:09:13', '2026-09-01 17:09:13'),
(14, 'Hannah', 'Melotto', 'Hey! Do you have any use for a freelance writer? I have nearly a decade of experience and can help with pretty much any type of content, including blog posts, case studies, press releases, thought leadership, articles, and much more. I&#x27;m currently looking for new opportunities and would love to see if you have any writing projects I could help with. You can book a time with me to chat if interested. Hoping to connect! https:&#x2F;&#x2F;calendly.com&#x2F;melottogroup&#x2F;30min', 1, '2026-09-01 17:10:05', '2026-09-01 17:10:05'),
(15, 'Hannah', 'Melotto', 'Hey! Do you have any use for a freelance writer? I have nearly a decade of experience and can help with pretty much any type of content, including blog posts, case studies, press releases, thought leadership, articles, and much more. I&#x27;m currently looking for new opportunities and would love to see if you have any writing projects I could help with. You can book a time with me to chat if interested. Hoping to connect! https:&#x2F;&#x2F;calendly.com&#x2F;melottogroup&#x2F;30min', 1, '2026-09-27 20:55:46', '2026-09-27 20:55:46'),
(16, 'Hannah', 'Melotto', 'Hey! Do you have any use for a freelance writer? I have nearly a decade of experience and can help with pretty much any type of content, including blog posts, case studies, press releases, thought leadership, articles, and much more. I&#x27;m currently looking for new opportunities and would love to see if you have any writing projects I could help with. You can book a time with me to chat if interested. Hoping to connect! https:&#x2F;&#x2F;calendly.com&#x2F;melottogroup&#x2F;30min', 1, '2026-09-27 20:56:22', '2026-09-27 20:56:22');

