.class Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentIntentSenderContract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Landroidx/activity/result/IntentSenderRequest;",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3568
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Landroidx/activity/result/IntentSenderRequest;

    .line 3574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3575
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3576
    nop

    .line 3577
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3578
    .local v1, "activityOptions":Landroid/os/Bundle;
    nop

    .line 3579
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "activity.result.requestCode"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3580
    .local v3, "requestCode":I
    if-eqz v1, :cond_0

    .line 3581
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3582
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3585
    .end local v1    # "activityOptions":Landroid/os/Bundle;
    .end local v3    # "requestCode":I
    :cond_0
    const-string v1, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3586
    return-object v0
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 3568
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->createIntent(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3592
    new-instance v0, Landroidx/activity/result/ActivityResult;

    invoke-direct {v0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 3568
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;

    move-result-object p1

    return-object p1
.end method
