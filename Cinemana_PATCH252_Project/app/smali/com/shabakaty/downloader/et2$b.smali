.class public Lcom/shabakaty/downloader/et2$b;
.super Ljava/lang/Object;
.source "MeteringRepeatingSession.java"

# interfaces
.implements Lcom/shabakaty/downloader/hx4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/et2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/hx4<",
        "Lcom/shabakaty/downloader/cx4;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/o90;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/hx4;->m:Lcom/shabakaty/downloader/o90$a;

    new-instance v2, Lcom/shabakaty/downloader/ks;

    invoke-direct {v2}, Lcom/shabakaty/downloader/ks;-><init>()V

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v0, v1, v3, v2}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/et2$b;->r:Lcom/shabakaty/downloader/o90;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->g(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/in3;->e(Lcom/shabakaty/downloader/jn3;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->c(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcom/shabakaty/downloader/o90$a;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->a(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->f(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/shabakaty/downloader/o90;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et2$b;->r:Lcom/shabakaty/downloader/o90;

    return-object v0
.end method

.method public synthetic i()I
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/zy1;->a(Lcom/shabakaty/downloader/az1;)I

    move-result v0

    return v0
.end method

.method public synthetic k(Lcom/shabakaty/downloader/cx4$a;)Lcom/shabakaty/downloader/cx4$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/jx4;->a(Lcom/shabakaty/downloader/kx4;Lcom/shabakaty/downloader/cx4$a;)Lcom/shabakaty/downloader/cx4$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pk4;->a(Lcom/shabakaty/downloader/qk4;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic n(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->h(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic p(I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gx4;->d(Lcom/shabakaty/downloader/hx4;I)I

    move-result p1

    return p1
.end method

.method public synthetic r(Lcom/shabakaty/downloader/u14$d;)Lcom/shabakaty/downloader/u14$d;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gx4;->c(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/u14$d;)Lcom/shabakaty/downloader/u14$d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic s(Lcom/shabakaty/downloader/u14;)Lcom/shabakaty/downloader/u14;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gx4;->b(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/u14;)Lcom/shabakaty/downloader/u14;

    move-result-object p1

    return-object p1
.end method

.method public synthetic t(Ljava/lang/String;Lcom/shabakaty/downloader/o90$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->b(Lcom/shabakaty/downloader/jn3;Ljava/lang/String;Lcom/shabakaty/downloader/o90$b;)V

    return-void
.end method

.method public synthetic u(Lcom/shabakaty/downloader/o90$a;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->d(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic w(Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/fu;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gx4;->a(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/fu;

    move-result-object p1

    return-object p1
.end method
