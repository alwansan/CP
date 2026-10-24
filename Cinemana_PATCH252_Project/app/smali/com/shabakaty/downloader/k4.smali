.class public final Lcom/shabakaty/downloader/k4;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k4$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/shabakaty/downloader/k4;

.field public static final h:Lcom/shabakaty/downloader/k4$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:[Lcom/shabakaty/downloader/k4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v8, Lcom/shabakaty/downloader/k4;

    const/4 v9, 0x0

    new-array v2, v9, [Lcom/shabakaty/downloader/k4$a;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/k4;-><init>(Ljava/lang/Object;[Lcom/shabakaty/downloader/k4$a;JJI)V

    sput-object v8, Lcom/shabakaty/downloader/k4;->g:Lcom/shabakaty/downloader/k4;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/k4$a;

    new-array v14, v9, [I

    new-array v15, v9, [Landroid/net/Uri;

    new-array v1, v9, [J

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object v10, v0

    move-object/from16 v16, v1

    .line 3
    invoke-direct/range {v10 .. v19}, Lcom/shabakaty/downloader/k4$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/k4$a;->d:[I

    .line 5
    array-length v2, v1

    .line 6
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 8
    invoke-static {v14, v2, v3, v9}, Ljava/util/Arrays;->fill([IIII)V

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/k4$a;->e:[J

    .line 10
    array-length v2, v1

    .line 11
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 12
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/k4$a;->c:[Landroid/net/Uri;

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, [Landroid/net/Uri;

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/k4$a;

    iget-wide v11, v0, Lcom/shabakaty/downloader/k4$a;->a:J

    iget-wide v3, v0, Lcom/shabakaty/downloader/k4$a;->f:J

    iget-boolean v0, v0, Lcom/shabakaty/downloader/k4$a;->g:Z

    const/4 v13, 0x0

    move-object v10, v2

    move-object/from16 v16, v1

    move-wide/from16 v17, v3

    move/from16 v19, v0

    invoke-direct/range {v10 .. v19}, Lcom/shabakaty/downloader/k4$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    .line 16
    sput-object v2, Lcom/shabakaty/downloader/k4;->h:Lcom/shabakaty/downloader/k4$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Lcom/shabakaty/downloader/k4$a;JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k4;->a:Ljava/lang/Object;

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/k4;->c:J

    .line 4
    iput-wide p5, p0, Lcom/shabakaty/downloader/k4;->d:J

    .line 5
    array-length p1, p2

    add-int/2addr p1, p7

    iput p1, p0, Lcom/shabakaty/downloader/k4;->b:I

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    .line 7
    iput p7, p0, Lcom/shabakaty/downloader/k4;->e:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/shabakaty/downloader/k4$a;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/k4;->e:I

    if-ge p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/k4;->h:Lcom/shabakaty/downloader/k4$a;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/k4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/k4;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/k4;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/shabakaty/downloader/k4;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/k4;->b:I

    iget v3, p1, Lcom/shabakaty/downloader/k4;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/k4;->c:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/k4;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/k4;->d:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/k4;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/k4;->e:I

    iget v3, p1, Lcom/shabakaty/downloader/k4;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    .line 4
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

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
    iget v0, p0, Lcom/shabakaty/downloader/k4;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/k4;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lcom/shabakaty/downloader/k4;->c:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Lcom/shabakaty/downloader/k4;->d:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/k4;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const-string v0, "AdPlaybackState(adsId="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/k4;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-wide v1, p0, Lcom/shabakaty/downloader/k4;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    array-length v2, v2

    const-string v3, "])"

    if-ge v1, v2, :cond_8

    const-string v2, "adGroup(timeUs="

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    aget-object v2, v2, v1

    iget-wide v4, v2, Lcom/shabakaty/downloader/k4$a;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", ads=["

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shabakaty/downloader/k4$a;->d:[I

    array-length v4, v4

    const-string v5, ", "

    const/4 v6, 0x1

    if-ge v2, v4, :cond_6

    const-string v4, "ad(state="

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v4, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shabakaty/downloader/k4$a;->d:[I

    aget v4, v4, v2

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2

    const/4 v7, 0x3

    if-eq v4, v7, :cond_1

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    const/16 v4, 0x3f

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v4, 0x21

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v4, 0x50

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v4, 0x53

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v4, 0x52

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v4, 0x5f

    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v4, ", durationUs="

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v4, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shabakaty/downloader/k4$a;->e:[J

    aget-wide v7, v4, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    iget-object v4, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shabakaty/downloader/k4$a;->d:[I

    array-length v4, v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_5

    .line 23
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v2, p0, Lcom/shabakaty/downloader/k4;->f:[Lcom/shabakaty/downloader/k4$a;

    array-length v2, v2

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_7

    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 27
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
