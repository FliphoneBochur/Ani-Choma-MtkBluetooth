.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;
.super Ljava/lang/Object;
.source "AvrcpCoverArtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadEvent"
.end annotation


# instance fields
.field final mImageUuid:Ljava/lang/String;

.field final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->mImageUuid:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->mUri:Landroid/net/Uri;

    .line 66
    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->mImageUuid:Ljava/lang/String;

    return-object v0
.end method
