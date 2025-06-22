[comment]: <> (please keep all comment items at the top of the markdown file)
[comment]: <> (please do not change the ***, as well as <div> placeholders for Note and Tip layout)
[comment]: <> (please keep the ### 1. and 2. titles as is for consistency across all demoguides)
[comment]: <> (section 1 provides a bullet list of resources + clarifying screenshots of the key resources details)
[comment]: <> (section 2 provides summarized step-by-step instructions on what to demo)


[comment]: <> (this is the section for the Note: item; please do not make any changes here)
***
### Azure AI Foundry with Sora Model

This scenario deploys an Azure AI Foundry Hub and Project architecture, with the OpenAI Sora Model, allowing you to create a video snippet from the Video Playground.

<img src="https://raw.githubusercontent.com/petender/tdd-azd-foundrysora/refs/heads/main/demoguide/AIFoundrywithSora.png?raw=true" alt="AI Foundry with Sora scenario diagram" style="width:70%;">
<br></br>

<div style="background: lightgreen; 
            font-size: 14px; 
            color: black;
            padding: 5px; 
            border: 1px solid lightgray; 
            margin: 5px;">

**Note:** Below demo steps should be used **as a guideline** for doing your own demos. Please consider contributing to add additional demo steps.
</div>

<div style="background: purple; 
            font-size: 14px; 
            color: white;
            padding: 5px; 
            border: 1px solid lightgray; 
            margin: 5px;">

**Tip:** The OpenAI Sora model is currently only available in **East US 2**. Allocating a different location during AZD-deployment will fail. 
</div>

[comment]: <> (this is the section for the Tip: item; consider adding a Tip, or remove the section between <div> and </div> if there is no tip)

***
### 1. What Resources are getting deployed

The following resources are getting deployed:

* RG-<azd-env-name> : The Resource Group using the AZD env name you specified
* aisrvsora%uniquestring% : Azure AI Foundry Service for Sora
* hubsora%uniquestring%: Azure AI Foundry Hub for Sora
* projsora%uniquestring% : Azure AI Foundry Project for Sora 
* kvsora%uniquestring%: Key Vault Resource
* stsora%uniquestring%: Storage Account which is required by AI Foundry

<img src="https://raw.githubusercontent.com/petender/azd-foundrysora/refs/heads/main/demoguide/ResourceGroup_Overview.png?raw=true" alt="AI Foundry with Sora model Resource Group" style="width:70%;">
<br></br>


### 2. What can I demo from this scenario after deployment

1. Assuming you already walked the learner through the foundational concepts of Azure AI Foundry, Hub & Project, the demo starts from opening the Azure AI Foundry portal from https://ai.azure.com, navigating to the hubsora%uniquestring% resource, and **selecting the projsora%uniquestring% Foundry Project**.

<img src="https://raw.githubusercontent.com/petender/azd-foundrysora/refs/heads/main/demoguide/FoundryProject.png?raw=true" alt="AI Foundry Project" style="width:70%;">
<br></br>

1. Navigate to the **My Assets** section in the left menu, and select **Models + endpoints**.

<img src="https://raw.githubusercontent.com/petender/azd-foundrysora/refs/heads/main/demoguide/SoraModel_Overview.png?raw=true" alt="Sora Model Overview" style="width:70%;">
<br></br>

1. select **sora** to open its detailed view. Highlight the **Target URI**, which would be relevant for a developer to know as part of their application code references. Next, briefly touch on the **Tokens per Minute Rate Limit** and how this is used by the LLM model in the backend. Last, briefly discuss the **Model version** and **Model retirement date**.

<img src="https://raw.githubusercontent.com/petender/azd-foundrysora/refs/heads/main/demoguide/SoraModel_Details.png?raw=true" alt="Sora Model Details" style="width:70%;">
<br></br>

1. From the **Models & Endpoints** page, click the **Open In Playground** button (if you closed this view, you can directly navigate to **Playgrounds** from the left menu and select **Video Playground (preview) )

<img src="https://raw.githubusercontent.com/petender/azd-foundrysora/refs/heads/main/demoguide/VideoPlayground.png?raw=true" alt="Video Playground" style="width:70%;">
<br></br>

1. In the **prompt window - saying Describe the video you want to generate**, enter a descriptive prompt message, what you want the video to be about. For example "A cowboy riding a horse in a Montana mountain scene". For more inspiration and seeing examples of more detailed prompts and the resulting videos, check https://openai.com/sora/.

Next, specify the required video settings, such as resolution, duration, etc.

<img src="https://raw.githubusercontent.com/petender/azd-foundrysora/refs/heads/main/demoguide/Sora_Prompt.png?raw=true" alt="Sora Sample Prompt" style="width:70%;">
<br></br>

For the purpose of the demo, I suggest leaving the defaults as is (16:9, 480p, 5sec, 1v), to also keep cost in control.

<div style="background: purple; 
            font-size: 14px; 
            color: white;
            padding: 5px; 
            border: 1px solid lightgray; 
            margin: 5px;">

**Tip:** Using the OpenAI Sora model can become quite expensive, quite quickly, depending on the video settings you specify. Keeping the defaults, it should be **1 USD per 5 seconds of video** Generating a high-quality video using 1080p boosts the cost to **9 USD per 5 seconds of video**  
</div>

1. Click **Generate**. After about 20-30 seconds, your resulting video will be shown on screen.

<img src="https://raw.githubusercontent.com/petender/azd-foundrysora/refs/heads/main/demoguide/Sora_Video_Output.png?raw=true" alt="Sora Sample Video" style="width:70%;">
<br></br>

This concludes the demo suggestion on how to show Azure AI Foundry with Sora Video Creation Playground.

[comment]: <> (this is the closing section of the demo steps. Please do not change anything here to keep the layout consistant with the other demoguides.)
<br></br>
***
<div style="background: lightgray; 
            font-size: 14px; 
            color: black;
            padding: 5px; 
            border: 1px solid lightgray; 
            margin: 5px;">

**Note:** This is the end of the current demo guide instructions.
</div>




