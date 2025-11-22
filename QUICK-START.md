# 🚀 FlowSync AI - Quick Start Guide
## Complete Deployment in 30 Minutes

> **For the impatient developer:** Copy-paste 3 commands and you're done!

---

## 📋 What You'll Need (5 minutes)

Before you start, gather these items:

1. **Google API Key** (free)
   - Go to: https://aistudio.google.com/app/apikey
   - Click "Create API Key" → "Create" → Copy the key

2. **Stripe API Keys** (free account required)
   - Go to: https://dashboard.stripe.com/apikeys
   - Copy your **Public Key** (starts with `pk_live_`)
   - Copy your **Secret Key** (starts with `sk_live_`)
   - Go to Webhooks → Create endpoint at `wernerai.se/api/webhooks/stripe`
   - Copy the **Webhook Secret** (starts with `whsec_`)

3. **Vercel Account** (free)
   - Sign up at: https://vercel.com
   - Connect your GitHub account

---

## ⚡ THE FASTEST PATH: 3-Step Deployment

### Step 1: Download & Extract (1 minute)
```powershell
# The application files are ready in GitHub
# Download: https://github.com/kalashnikv287-star/flowsync-ai/archive/refs/heads/main.zip
# Extract to: C:\Users\[YourUsername]\flowsync-ai
```

### Step 2: Run Deployment Script (5 minutes)
```powershell
# Open PowerShell in the extracted folder
# Run this command:
powershell -ExecutionPolicy Bypass -File DEPLOY.ps1

# This script automatically:
# ✓ Initializes Git repository
# ✓ Stages all files
# ✓ Commits to your repository
# ✓ Pushes to GitHub
```

### Step 3: Setup Environment Variables (3 minutes)
```powershell
# Still in the folder, run:
powershell -ExecutionPolicy Bypass -File SETUP-ENV.ps1

# This script will:
# 1. Ask for your Google API Key
# 2. Ask for your Stripe Public Key
# 3. Ask for your Stripe Secret Key
# 4. Ask for your Stripe Webhook Secret
# 5. Create .env.local with all variables
```

### Step 4: Deploy to Vercel (20 minutes)

1. Go to: https://vercel.com/new
2. Select **Import Git Repository**
3. Find and select `kalashnikv287-star/flowsync-ai`
4. In **Environment Variables**, add:
   ```
   REACT_APP_GOOGLE_API_KEY = [Your Google API Key]
   REACT_APP_STRIPE_PUBLIC_KEY = [Your Stripe Public Key]
   STRIPE_SECRET_KEY = [Your Stripe Secret Key]
   STRIPE_WEBHOOK_SECRET = [Your Webhook Secret]
   ```
5. Click **Deploy**
6. Wait for the build to complete (~3 minutes)
7. Visit your deployment URL to verify it works

### Step 5: Connect Your Domain (Wait ~2 hours)

1. In Vercel dashboard, go to **Settings → Domains**
2. Add domain: `wernerai.se`
3. Update your domain registrar DNS records:
   - Type: `CNAME`
   - Name: `www` (or `@` for root)
   - Value: `cname.vercel.sh` (Vercel will provide exact value)
4. Wait 24-48 hours for DNS propagation
5. Vercel will automatically update SSL/TLS

---

## 📁 Repository Structure

```
flowsync-ai/
├── DEPLOY.ps1                 # Run this first
├── SETUP-ENV.ps1              # Run this second
├── QUICK-START.md             # This file
├── README.md                  # Full documentation
├── .env.example               # Environment template
├── public/                    # Static files
├── src/
│   ├── components/            # React components
│   ├── pages/                 # Application pages
│   ├── services/              # API services
│   ├── styles/                # CSS modules
│   └── App.tsx                # Main app
├── package.json               # Dependencies
└── vercel.json                # Vercel config
```

---

## 🔍 Troubleshooting

### PowerShell Script Won't Run
```powershell
# If you get "running scripts is disabled" error:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# Then try again
```

### API Keys Not Working
- Double-check for leading/trailing spaces
- Ensure you copied the ENTIRE key
- Verify you're using Live keys (not Test keys)

### Vercel Deployment Failed
- Check all environment variables are correctly set
- Verify Node.js version is 18 or higher
- Check build logs in Vercel dashboard

### Domain Not Resolving
- Wait 24-48 hours for DNS to propagate
- Check your domain registrar's DNS settings
- Use: https://dns.google/ to verify DNS is correct

---

## ✅ Verification Checklist

- [ ] GitHub repository has all files
- [ ] .env.local file created with your API keys
- [ ] Vercel deployment completed successfully
- [ ] Can access app at your Vercel URL
- [ ] Domain DNS records configured
- [ ] Can access app at https://wernerai.se
- [ ] Stripe payments tested
- [ ] Can create workflows
- [ ] Can run automations

---

## 📞 Next Steps

1. **Customize the app:**
   - Edit `src/components/` for UI changes
   - Modify `src/services/` for business logic
   - Update `src/pages/` for new pages

2. **Monitor your app:**
   - Vercel Analytics: https://vercel.com/docs/analytics
   - Error tracking: https://vercel.com/docs/monitoring/error-tracking

3. **Scale your app:**
   - Database: Add PostgreSQL for user data
   - Email: Add SendGrid for notifications
   - Storage: Add cloud storage for files

---

## 📚 Full Documentation

For detailed information, see:
- **README.md** - Complete documentation
- **.env.example** - All available environment variables
- **DEPLOY.ps1** - What the deployment script does
- **SETUP-ENV.ps1** - Environment setup details

---

**Made with ❤️ for fast, effortless deployment**
