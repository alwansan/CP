.class public final Lcom/shabakaty/downloader/be2;
.super Ljava/lang/Object;
.source "KotlinClassHeader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/be2$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/be2$a;

.field public final b:Lcom/shabakaty/downloader/ob2;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/be2$a;Lcom/shabakaty/downloader/ob2;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)V
    .locals 0

    const-string p8, "kind"

    invoke-static {p1, p8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/be2;->a:Lcom/shabakaty/downloader/be2$a;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/be2;->c:[Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/be2;->d:[Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/be2;->e:[Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/be2;->f:Ljava/lang/String;

    .line 8
    iput p7, p0, Lcom/shabakaty/downloader/be2;->g:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/be2;->f:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/be2;->a:Lcom/shabakaty/downloader/be2$a;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/be2$a;->y:Lcom/shabakaty/downloader/be2$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final b(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/be2;->a:Lcom/shabakaty/downloader/be2$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
