.class Lcom/android/bluetooth/avrcp/Folder;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public isPlayable:Z

.field public mediaId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Folder;->mediaId:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/android/bluetooth/avrcp/Folder;->isPlayable:Z

    .line 27
    iput-object p3, p0, Lcom/android/bluetooth/avrcp/Folder;->title:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/bluetooth/avrcp/Folder;
    .locals 4

    .line 32
    new-instance v0, Lcom/android/bluetooth/avrcp/Folder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Folder;->mediaId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/bluetooth/avrcp/Folder;->isPlayable:Z

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Folder;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/Folder;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Folder;->clone()Lcom/android/bluetooth/avrcp/Folder;

    move-result-object v0

    return-object v0
.end method
