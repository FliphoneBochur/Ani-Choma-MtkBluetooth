.class Lcom/android/bluetooth/avrcp/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field public numTracks:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public trackNum:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/bluetooth/avrcp/Metadata;
    .locals 2

    .line 33
    new-instance v0, Lcom/android/bluetooth/avrcp/Metadata;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/Metadata;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->trackNum:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->trackNum:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->numTracks:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->numTracks:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->genre:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->genre:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->duration:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->duration:Ljava/lang/String;

    .line 42
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Metadata;->clone()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcp/Metadata;

    if-nez v1, :cond_1

    return v0

    .line 50
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcp/Metadata;

    .line 51
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->duration:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/bluetooth/avrcp/Metadata;->duration:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 58
    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mediaId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" title=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" artist=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" album=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trackPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->trackNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Metadata;->numTracks:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
