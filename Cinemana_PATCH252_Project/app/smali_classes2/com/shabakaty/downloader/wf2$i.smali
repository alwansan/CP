.class public final Lcom/shabakaty/downloader/wf2$i;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q62;ZLcom/shabakaty/downloader/wf2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/hw2;",
        "Lcom/shabakaty/downloader/r20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wf2;

.field public final synthetic s:Lcom/shabakaty/downloader/bg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/bg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wf2$i;->r:Lcom/shabakaty/downloader/wf2;

    iput-object p2, p0, Lcom/shabakaty/downloader/wf2$i;->s:Lcom/shabakaty/downloader/bg2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/hw2;

    const-string p1, "name"

    .line 2
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/wf2$i;->r:Lcom/shabakaty/downloader/wf2;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/wf2;->r:Lcom/shabakaty/downloader/d03;

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/wf2$i;->r:Lcom/shabakaty/downloader/wf2;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/wf2;->s:Lcom/shabakaty/downloader/d03;

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/f72;

    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2$i;->s:Lcom/shabakaty/downloader/bg2;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/xf2;

    iget-object v3, p0, Lcom/shabakaty/downloader/wf2$i;->r:Lcom/shabakaty/downloader/wf2;

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/xf2;-><init>(Lcom/shabakaty/downloader/wf2;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object v3

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2$i;->s:Lcom/shabakaty/downloader/bg2;

    .line 14
    iget-object v1, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 15
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 16
    iget-object v4, p0, Lcom/shabakaty/downloader/wf2$i;->r:Lcom/shabakaty/downloader/wf2;

    .line 17
    iget-object v4, v4, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 18
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object v5

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2$i;->s:Lcom/shabakaty/downloader/bg2;

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 21
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 22
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object p1

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, p1

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/y31;->T0(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/y31;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/wf2$i;->s:Lcom/shabakaty/downloader/bg2;

    .line 25
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 26
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->b:Lcom/shabakaty/downloader/u62;

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/u62$a;

    .line 28
    iget-object v3, p0, Lcom/shabakaty/downloader/wf2$i;->r:Lcom/shabakaty/downloader/wf2;

    .line 29
    iget-object v3, v3, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 30
    invoke-static {v3}, Lcom/shabakaty/downloader/hr0;->f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/v20;->d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/shabakaty/downloader/wf2$i;->r:Lcom/shabakaty/downloader/wf2;

    .line 32
    iget-object v3, v3, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    const/4 v4, 0x2

    .line 33
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/shabakaty/downloader/u62$a;-><init>(Lcom/shabakaty/downloader/v20;[BLcom/shabakaty/downloader/q62;I)V

    .line 34
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/u62;->a(Lcom/shabakaty/downloader/u62$a;)Lcom/shabakaty/downloader/q62;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/wf2$i;->s:Lcom/shabakaty/downloader/bg2;

    iget-object v2, p0, Lcom/shabakaty/downloader/wf2$i;->r:Lcom/shabakaty/downloader/wf2;

    .line 36
    new-instance v3, Lcom/shabakaty/downloader/uf2;

    .line 37
    iget-object v2, v2, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 38
    invoke-direct {v3, v1, v2, p1, v0}, Lcom/shabakaty/downloader/uf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/q20;)V

    .line 39
    iget-object p1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 40
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->s:Lcom/shabakaty/downloader/w62;

    .line 41
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/w62;->a(Lcom/shabakaty/downloader/t62;)V

    move-object v0, v3

    :cond_2
    :goto_0
    return-object v0
.end method
