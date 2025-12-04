.class public Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;
.super Lcom/android/bluetooth/pbapclient/PullRequest;
.source "PhonebookPullRequest.java"


# static fields
.field private static final MAX_OPS:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "PbapPbPullRequest"

.field private static final VDBG:Z = false


# instance fields
.field public complete:Z

.field private final mAccount:Landroid/accounts/Account;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PullRequest;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->complete:Z

    .line 41
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->mAccount:Landroid/accounts/Account;

    .line 43
    const-string p1, "telecom/pb.vcf"

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->path:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public onPullComplete()V
    .locals 10

    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->mEntries:Ljava/util/List;

    const-string v1, "PbapPbPullRequest"

    if-nez v0, :cond_0

    .line 50
    const-string v0, "onPullComplete entries is null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v4, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->mEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "com.android.contacts"

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry;

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    const-string v4, "Interrupted durring insert."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 70
    invoke-virtual {v5, v2, v3}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0xfa

    if-lt v8, v9, :cond_2

    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 75
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v9, :cond_2

    .line 79
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 82
    :cond_2
    goto :goto_0

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 85
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 86
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 94
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 91
    :catch_0
    move-exception v2

    .line 92
    :try_start_2
    const-string v3, "Got exception: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->complete:Z

    .line 95
    nop

    .line 96
    return-void

    .line 94
    :goto_3
    iput-boolean v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->complete:Z

    .line 95
    throw v1
.end method
