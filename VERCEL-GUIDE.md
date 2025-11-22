# Vercel Deployment Guide - Visual Step-by-Step

## Deploy FlowSync AI in 5 minutes

This guide shows you EXACTLY where to click in Vercel dashboard.

---

## Step 1: Create Vercel Account (2 minutes)

1. Go to https://vercel.com
2. Click "Sign Up" (top right)
3. Choose "Continue with GitHub"
4. Authorize Vercel to access GitHub
5. Done! You're on your Vercel dashboard

---

## Step 2: Import Repository (1 minute)

1. Click "Add New..." button (top left)
2. Select "Project"
3. Click "Import Git Repository"
4. Type in search: `flowsync-ai`
5. Select `kalashnikv287-star/flowsync-ai`
6. Click "Import"

---

## Step 3: Configure Project (1 minute)

After clicking Import, you'll see configuration page.

**Project Name:** Leave as `flowsync-ai`
**Framework:** DO NOT CHANGE (auto-detected)
**Root Directory:** Leave empty

---

## Step 4: Add Environment Variables (CRITICAL!)

Click "Environment Variables" section and add these 4 variables:

### Variable 1:
```
REACT_APP_GOOGLE_API_KEY = [Your Google API Key]
```

### Variable 2:
```
REACT_APP_STRIPE_PUBLIC_KEY = [Your pk_live_ key]
```

### Variable 3:
```
STRIPE_SECRET_KEY = [Your sk_live_ key]
```

### Variable 4:
```
STRIPE_WEBHOOK_SECRET = [Your whsec_ key]
```

**Click "Add" after each variable!**

---

## Step 5: Deploy! (1 minute)

1. Scroll down
2. Click large blue "Deploy" button
3. Wait 3-5 minutes for build
4. See "Congratulations! Deployed successfully"
5. Click "Visit" to see your live app!

---

## Step 6: Connect Domain (5 minutes)

1. Click "Settings" tab
2. Click "Domains" (left sidebar)
3. Click "Add Domain"
4. Type: `wernerai.se`
5. Click "Add"
6. Follow DNS instructions for your registrar

---

## Verification Checklist

- [ ] App works at flowsync-ai.vercel.app
- [ ] Login page loads
- [ ] Stripe buttons visible
- [ ] Domain DNS records updated
- [ ] App accessible at wernerai.se
- [ ] SSL certificate active (green lock)

---

**Deployment complete!**
