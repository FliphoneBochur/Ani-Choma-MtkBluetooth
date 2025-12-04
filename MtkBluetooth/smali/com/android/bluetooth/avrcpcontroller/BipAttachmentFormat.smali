.class public Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;
.super Ljava/lang/Object;
.source "BipAttachmentFormat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "avrcpcontroller.BipAttachmentFormat"


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentType:Ljava/lang/String;

.field private final mCreated:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

.field private final mModified:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

.field private final mName:Ljava/lang/String;

.field private final mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "Content-Type cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mContentType:Ljava/lang/String;

    .line 104
    const-string p1, "Name cannot be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mName:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCharset:Ljava/lang/String;

    .line 106
    iput p4, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mSize:I

    .line 107
    const/4 p1, 0x0

    if-eqz p5, :cond_0

    new-instance p2, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    invoke-direct {p2, p5}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;-><init>(Ljava/util/Date;)V

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCreated:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    .line 108
    if-eqz p6, :cond_1

    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    invoke-direct {p1, p6}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;-><init>(Ljava/util/Date;)V

    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mModified:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_1

    .line 75
    if-eqz p3, :cond_0

    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mContentType:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mName:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCharset:Ljava/lang/String;

    .line 82
    invoke-static {p4}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mSize:I

    .line 84
    nop

    .line 86
    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    invoke-direct {p2, p5}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/bluetooth/avrcpcontroller/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception p2

    .line 88
    move-object p2, p1

    .line 90
    :goto_0
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCreated:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    .line 92
    nop

    .line 94
    :try_start_1
    new-instance p2, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    invoke-direct {p2, p6}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/bluetooth/avrcpcontroller/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    move-object p1, p2

    goto :goto_1

    .line 95
    :catch_1
    move-exception p2

    .line 96
    nop

    .line 98
    :goto_1
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mModified:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    .line 99
    return-void

    .line 76
    :cond_0
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    const-string p2, "Name is required and must be valid"

    invoke-direct {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    const-string p2, "ContentType is required and must be valid"

    invoke-direct {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 3

    .line 112
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 114
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number format for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "avrcpcontroller.BipAttachmentFormat"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 147
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 148
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 150
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;

    .line 151
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 152
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 153
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getCharset()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getSize()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 155
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getCreatedDate()Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getCreatedDate()Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getModifiedDate()Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getModifiedDate()Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    move-result-object v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 151
    :goto_0
    return v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Lcom/android/bluetooth/avrcpcontroller/BipDateTime;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCreated:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    return-object v0
.end method

.method public getModifiedDate()Lcom/android/bluetooth/avrcpcontroller/BipDateTime;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mModified:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    const-string v1, "<attachment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " content-type=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCharset:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " charset=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCharset:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " name=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mSize:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " size=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCreated:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " created=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mCreated:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mModified:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " modified=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->mModified:Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_3
    const-string v1, " />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
