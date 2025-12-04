.class Landroidx/activity/ComponentActivity$2;
.super Landroidx/activity/result/ActivityResultRegistry;
.source "ComponentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/activity/ComponentActivity;

    .line 134
    iput-object p1, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Landroidx/activity/result/ActivityResultRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 17
    .param p1, "requestCode"    # I
    .param p4, "options"    # Landroidx/core/app/ActivityOptionsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    .line 142
    .local p2, "contract":Landroidx/activity/result/contract/ActivityResultContract;, "Landroidx/activity/result/contract/ActivityResultContract<TI;TO;>;"
    .local p3, "input":Ljava/lang/Object;, "TI;"
    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v13, v1, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    .line 145
    .local v13, "activity":Landroidx/activity/ComponentActivity;
    nop

    .line 146
    invoke-virtual {v11, v13, v12}, Landroidx/activity/result/contract/ActivityResultContract;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v14

    .line 147
    .local v14, "synchronousResult":Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;, "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult<TO;>;"
    if-eqz v14, :cond_0

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/activity/ComponentActivity$2$1;

    invoke-direct {v2, v1, v10, v14}, Landroidx/activity/ComponentActivity$2$1;-><init>(Landroidx/activity/ComponentActivity$2;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void

    .line 158
    :cond_0
    invoke-virtual {v11, v13, v12}, Landroidx/activity/result/contract/ActivityResultContract;->createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v15

    .line 159
    .local v15, "intent":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    const-string v0, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "permissions":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 165
    return-void

    .line 168
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "nonGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    .line 170
    .local v6, "permission":Ljava/lang/String;
    iget-object v7, v1, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    .line 171
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 170
    invoke-virtual {v7, v6, v8, v9}, Landroidx/activity/ComponentActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v6    # "permission":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 177
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 178
    new-array v3, v4, [Ljava/lang/String;

    .line 179
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 178
    invoke-static {v13, v3, v10}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 181
    .end local v0    # "permissions":[Ljava/lang/String;
    .end local v2    # "nonGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    goto :goto_4

    :cond_5
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    nop

    .line 183
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroidx/activity/result/IntentSenderRequest;

    .line 185
    .local v16, "request":Landroidx/activity/result/IntentSenderRequest;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    .line 186
    invoke-virtual/range {v16 .. v16}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v5

    .line 187
    invoke-virtual/range {v16 .. v16}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    move-result v7

    const/4 v8, 0x0

    .line 188
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    move-object v9, v0

    .line 185
    move-object v2, v13

    move/from16 v4, p1

    invoke-static/range {v2 .. v9}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroidx/activity/ComponentActivity$2$2;

    invoke-direct {v3, v1, v10, v0}, Landroidx/activity/ComponentActivity$2$2;-><init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v16    # "request":Landroidx/activity/result/IntentSenderRequest;
    :goto_2
    goto :goto_4

    .line 201
    :cond_7
    const/4 v0, 0x0

    .line 202
    .local v0, "optionsBundle":Landroid/os/Bundle;
    const-string v2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 203
    invoke-virtual {v15, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    .line 204
    :cond_8
    if-eqz p4, :cond_9

    .line 205
    invoke-virtual/range {p4 .. p4}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    :cond_9
    :goto_3
    invoke-static {v13, v15, v10, v0}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 209
    .end local v0    # "optionsBundle":Landroid/os/Bundle;
    :goto_4
    return-void
.end method
