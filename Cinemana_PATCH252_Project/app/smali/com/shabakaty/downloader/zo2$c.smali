.class public final Lcom/shabakaty/downloader/zo2$c;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/zo2$c;->a:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zo2$c;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/zo2$c;->c:I

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/zo2$c;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/shabakaty/downloader/zo2$c;
    .locals 7

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const-string v0, " "

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 4
    aget-object v0, p0, v3

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/h;->b(Ljava/lang/String;)I

    move-result v0

    .line 5
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "/"

    invoke-static {p0, v4}, Lcom/shabakaty/downloader/sy4;->P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6
    array-length v4, p0

    if-lt v4, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 7
    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/h;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    .line 8
    array-length v5, p0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 9
    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/h;->b(Ljava/lang/String;)I

    move-result v4

    .line 10
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/zo2$c;

    aget-object p0, p0, v3

    invoke-direct {v1, v0, p0, v2, v4}, Lcom/shabakaty/downloader/zo2$c;-><init>(ILjava/lang/String;II)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/zo2$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/zo2$c;

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/zo2$c;->a:I

    iget v3, p1, Lcom/shabakaty/downloader/zo2$c;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/zo2$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/zo2$c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/zo2$c;->c:I

    iget v3, p1, Lcom/shabakaty/downloader/zo2$c;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/zo2$c;->d:I

    iget p1, p1, Lcom/shabakaty/downloader/zo2$c;->d:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/zo2$c;->a:I

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/zo2$c;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/zo2$c;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/zo2$c;->d:I

    add-int/2addr v0, v1

    return v0
.end method
