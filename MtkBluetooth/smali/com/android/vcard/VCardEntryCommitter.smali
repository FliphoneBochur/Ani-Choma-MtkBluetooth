.class public Lcom/android/vcard/VCardEntryCommitter;
.super Ljava/lang/Object;
.source "VCardEntryCommitter.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# static fields
.field public static LOG_TAG:Ljava/lang/String; = null

.field private static final MAX_BYTE:I = 0x80000


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCounter:I

.field private final mCreatedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToCommit:J

.field private mTotalPhotoSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "MTK_vCard"

    sput-object v0, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mTotalPhotoSize:I

    .line 56
    iput-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    return-void
.end method

.method private getPhotoSize(Lcom/android/vcard/VCardEntry;)I
    .locals 3

    .line 95
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object p1

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 97
    return v0

    .line 99
    :cond_0
    nop

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 101
    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$PhotoData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 104
    :cond_1
    goto :goto_0

    .line 105
    :cond_2
    return v0
.end method

.method private pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 110
    const-string v0, "%s: %s"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    .line 116
    if-eqz p1, :cond_1

    array-length v5, p1

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-nez v5, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    aget-object p1, p1, v4

    iget-object v3, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    nop

    .line 116
    return-object v3

    .line 121
    :catch_0
    move-exception p1

    .line 122
    sget-object v5, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v3

    .line 118
    :catch_1
    move-exception p1

    .line 119
    sget-object v5, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v3
.end method


# virtual methods
.method public getCreatedUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onEnd()V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    invoke-static {}, Lcom/android/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "time to commit entries: %d ms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    iput v1, p0, Lcom/android/vcard/VCardEntryCommitter;->mTotalPhotoSize:I

    .line 74
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 6

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    .line 80
    iget v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    .line 82
    iget v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mTotalPhotoSize:I

    invoke-direct {p0, p1}, Lcom/android/vcard/VCardEntryCommitter;->getPhotoSize(Lcom/android/vcard/VCardEntry;)I

    move-result p1

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mTotalPhotoSize:I

    .line 84
    iget-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x190

    if-ge p1, v2, :cond_0

    iget p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mTotalPhotoSize:I

    const/high16 v2, 0x80000

    if-lt p1, v2, :cond_1

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/vcard/VCardEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    .line 88
    iput p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mTotalPhotoSize:I

    .line 89
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    .line 91
    :cond_1
    iget-wide v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    .line 92
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 61
    return-void
.end method
