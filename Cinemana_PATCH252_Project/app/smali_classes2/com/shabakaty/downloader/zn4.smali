.class public abstract Lcom/shabakaty/downloader/zn4;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zn4$j;,
        Lcom/shabakaty/downloader/zn4$f;,
        Lcom/shabakaty/downloader/zn4$b;,
        Lcom/shabakaty/downloader/zn4$c;,
        Lcom/shabakaty/downloader/zn4$d;,
        Lcom/shabakaty/downloader/zn4$g;,
        Lcom/shabakaty/downloader/zn4$h;,
        Lcom/shabakaty/downloader/zn4$i;,
        Lcom/shabakaty/downloader/zn4$e;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/zn4$j;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zn4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ljava/lang/StringBuilder;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    sget-object v1, Lcom/shabakaty/downloader/zn4$j;->v:Lcom/shabakaty/downloader/zn4$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    sget-object v1, Lcom/shabakaty/downloader/zn4$j;->u:Lcom/shabakaty/downloader/zn4$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    sget-object v1, Lcom/shabakaty/downloader/zn4$j;->r:Lcom/shabakaty/downloader/zn4$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    sget-object v1, Lcom/shabakaty/downloader/zn4$j;->w:Lcom/shabakaty/downloader/zn4$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    sget-object v1, Lcom/shabakaty/downloader/zn4$j;->t:Lcom/shabakaty/downloader/zn4$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    sget-object v1, Lcom/shabakaty/downloader/zn4$j;->s:Lcom/shabakaty/downloader/zn4$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract g()Lcom/shabakaty/downloader/zn4;
.end method
