.class Lcom/android/bluetooth/avrcp/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public folder:Lcom/android/bluetooth/avrcp/Folder;

.field public isFolder:Z

.field public song:Lcom/android/bluetooth/avrcp/Metadata;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/Folder;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcp/ListItem;->isFolder:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcp/ListItem;->isFolder:Z

    .line 26
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/ListItem;->folder:Lcom/android/bluetooth/avrcp/Folder;

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/avrcp/Metadata;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcp/ListItem;->isFolder:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/bluetooth/avrcp/ListItem;->isFolder:Z

    .line 31
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/ListItem;->song:Lcom/android/bluetooth/avrcp/Metadata;

    .line 32
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/bluetooth/avrcp/ListItem;
    .locals 2

    .line 36
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/ListItem;->isFolder:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/bluetooth/avrcp/ListItem;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/ListItem;->folder:Lcom/android/bluetooth/avrcp/Folder;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/Folder;->clone()Lcom/android/bluetooth/avrcp/Folder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/ListItem;-><init>(Lcom/android/bluetooth/avrcp/Folder;)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/ListItem;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/ListItem;->song:Lcom/android/bluetooth/avrcp/Metadata;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/Metadata;->clone()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/ListItem;-><init>(Lcom/android/bluetooth/avrcp/Metadata;)V

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
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/ListItem;->clone()Lcom/android/bluetooth/avrcp/ListItem;

    move-result-object v0

    return-object v0
.end method
