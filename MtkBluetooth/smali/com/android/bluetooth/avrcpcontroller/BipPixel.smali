.class public Lcom/android/bluetooth/avrcpcontroller/BipPixel;
.super Ljava/lang/Object;
.source "BipPixel.java"


# static fields
.field public static final PIXEL_MAX:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "avrcpcontroller.BipPixel"

.field public static final TYPE_FIXED:I = 0x1

.field public static final TYPE_RESIZE_FIXED_ASPECT_RATIO:I = 0x3

.field public static final TYPE_RESIZE_MODIFIED_ASPECT_RATIO:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private final mMinHeight:I

.field private final mMinWidth:I

.field private final mType:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p2}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->isDimensionInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->isDimensionInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {p3}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->isDimensionInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->isDimensionInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mType:I

    .line 102
    iput p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinWidth:I

    .line 103
    iput p3, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinHeight:I

    .line 104
    iput p4, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxWidth:I

    .line 105
    iput p5, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxHeight:I

    .line 106
    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Dimension\'s must be in [0, 65535]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 118
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->determinePixelType(Ljava/lang/String;)I

    move-result v0

    .line 119
    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 144
    :cond_0
    const-string v0, "^(\\d{1,5})\\*\\*-(\\d{1,5})\\*(\\d{1,5})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    nop

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    mul-int v4, v2, v0

    div-int/2addr v4, v3

    goto/16 :goto_1

    .line 132
    :cond_1
    const-string v0, "^(\\d{1,5})\\*(\\d{1,5})-(\\d{1,5})\\*(\\d{1,5})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    nop

    .line 137
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 138
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 139
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 140
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_1

    .line 121
    :cond_2
    const-string v0, "^(\\d{1,5})\\*(\\d{1,5})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    nop

    .line 125
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 126
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 128
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v1

    move v1, v4

    move v4, v5

    goto :goto_1

    .line 157
    :cond_3
    :goto_0
    const/4 v1, 0x0

    move v0, v2

    move v3, v0

    move v4, v3

    :goto_1
    if-eqz v1, :cond_5

    .line 160
    invoke-static {v2}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->isDimensionInvalid(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v3}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->isDimensionInvalid(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 161
    invoke-static {v4}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->isDimensionInvalid(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->isDimensionInvalid(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 165
    iput v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mType:I

    .line 166
    iput v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinWidth:I

    .line 167
    iput v4, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinHeight:I

    .line 168
    iput v3, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxWidth:I

    .line 169
    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxHeight:I

    .line 170
    return-void

    .line 162
    :cond_4
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    const-string v0, "Parsed dimensions must be in [0, 65535]"

    invoke-direct {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_5
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to determine type of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFixed(II)Lcom/android/bluetooth/avrcpcontroller/BipPixel;
    .locals 7

    .line 71
    new-instance v6, Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    const/4 v1, 0x1

    move-object v0, v6

    move v2, p0

    move v3, p1

    move v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;-><init>(IIIII)V

    return-object v6
.end method

.method public static createResizableFixed(III)Lcom/android/bluetooth/avrcpcontroller/BipPixel;
    .locals 7

    .line 87
    mul-int v0, p0, p2

    div-int v4, v0, p1

    .line 88
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    const/4 v2, 0x3

    move-object v1, v0

    move v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;-><init>(IIIII)V

    return-object v0
.end method

.method public static createResizableModified(IIII)Lcom/android/bluetooth/avrcpcontroller/BipPixel;
    .locals 7

    .line 79
    new-instance v6, Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    const/4 v1, 0x2

    move-object v0, v6

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;-><init>(IIIII)V

    return-object v6
.end method

.method private static determinePixelType(Ljava/lang/String;)I
    .locals 6

    .line 202
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    nop

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v4, p0, v2

    .line 205
    const/16 v5, 0x2a

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 204
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_2
    if-lez v3, :cond_3

    const/4 p0, 0x3

    if-gt v3, p0, :cond_3

    move v0, v3

    :cond_3
    return v0

    .line 202
    :cond_4
    :goto_1
    return v0
.end method

.method protected static isDimensionInvalid(I)Z
    .locals 1

    .line 211
    if-ltz p0, :cond_1

    const v0, 0xffff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 216
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 217
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 219
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    .line 220
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getType()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 221
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getMinWidth()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 222
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getMaxWidth()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 223
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getMinHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getMinHeight()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 224
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getMaxHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getMaxHeight()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 220
    :goto_0
    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinWidth:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 229
    nop

    .line 230
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mType:I

    const/4 v1, 0x1

    const-string v2, "*"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "**-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMinHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    goto :goto_0

    .line 232
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->mMaxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    nop

    .line 241
    :goto_0
    return-object v0
.end method
