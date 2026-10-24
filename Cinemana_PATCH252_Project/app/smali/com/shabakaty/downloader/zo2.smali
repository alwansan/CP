.class public final Lcom/shabakaty/downloader/zo2;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zo2$b;,
        Lcom/shabakaty/downloader/zo2$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/google/common/collect/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/zo2$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zo2$b;Lcom/google/common/collect/r;Lcom/shabakaty/downloader/zo2$c;Lcom/shabakaty/downloader/zo2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p4, p1, Lcom/shabakaty/downloader/zo2$b;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/shabakaty/downloader/zo2;->a:Ljava/lang/String;

    .line 4
    iget p4, p1, Lcom/shabakaty/downloader/zo2$b;->b:I

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/zo2;->b:I

    .line 6
    iget-object p4, p1, Lcom/shabakaty/downloader/zo2$b;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/zo2;->c:Ljava/lang/String;

    .line 8
    iget p4, p1, Lcom/shabakaty/downloader/zo2$b;->d:I

    .line 9
    iput p4, p0, Lcom/shabakaty/downloader/zo2;->d:I

    .line 10
    iget-object p4, p1, Lcom/shabakaty/downloader/zo2$b;->g:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/shabakaty/downloader/zo2;->f:Ljava/lang/String;

    .line 12
    iget-object p4, p1, Lcom/shabakaty/downloader/zo2$b;->h:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/shabakaty/downloader/zo2;->g:Ljava/lang/String;

    .line 14
    iget p4, p1, Lcom/shabakaty/downloader/zo2$b;->f:I

    .line 15
    iput p4, p0, Lcom/shabakaty/downloader/zo2;->e:I

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/zo2$b;->i:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/zo2;->h:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/shabakaty/downloader/zo2;->i:Lcom/google/common/collect/r;

    .line 19
    iput-object p3, p0, Lcom/shabakaty/downloader/zo2;->j:Lcom/shabakaty/downloader/zo2$c;

    return-void
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
    const-class v2, Lcom/shabakaty/downloader/zo2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/zo2;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/zo2;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/zo2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/zo2;->b:I

    iget v3, p1, Lcom/shabakaty/downloader/zo2;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/zo2;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/zo2;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/zo2;->d:I

    iget v3, p1, Lcom/shabakaty/downloader/zo2;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/zo2;->e:I

    iget v3, p1, Lcom/shabakaty/downloader/zo2;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/zo2;->i:Lcom/google/common/collect/r;

    iget-object v3, p1, Lcom/shabakaty/downloader/zo2;->i:Lcom/google/common/collect/r;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/common/collect/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/zo2;->j:Lcom/shabakaty/downloader/zo2$c;

    iget-object v3, p1, Lcom/shabakaty/downloader/zo2;->j:Lcom/shabakaty/downloader/zo2$c;

    .line 6
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zo2$c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/zo2;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/zo2;->f:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/zo2;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/zo2;->g:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/zo2;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/zo2;->h:Ljava/lang/String;

    .line 9
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/shabakaty/downloader/zo2;->a:Ljava/lang/String;

    const/16 v1, 0xd9

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/zo2;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/zo2;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/zo2;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/zo2;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/zo2;->i:Lcom/google/common/collect/r;

    invoke-virtual {v1}, Lcom/google/common/collect/r;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/zo2;->j:Lcom/shabakaty/downloader/zo2$c;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zo2$c;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/zo2;->f:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/zo2;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/zo2;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method
