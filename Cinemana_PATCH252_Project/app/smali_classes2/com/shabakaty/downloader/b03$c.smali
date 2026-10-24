.class public final Lcom/shabakaty/downloader/b03$c;
.super Lcom/shabakaty/downloader/af2;
.source "NotFoundClasses.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/b03;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/b03$a;",
        "Lcom/shabakaty/downloader/q20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/b03;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b03;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/b03$c;->r:Lcom/shabakaty/downloader/b03;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/b03$a;

    const-string v0, "$dstr$classId$typeParametersCount"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/b03$a;->a:Lcom/shabakaty/downloader/v20;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/b03$a;->b:Ljava/util/List;

    .line 5
    iget-boolean v1, v0, Lcom/shabakaty/downloader/v20;->c:Z

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->g()Lcom/shabakaty/downloader/v20;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/b03$c;->r:Lcom/shabakaty/downloader/b03;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/b03;->c:Lcom/shabakaty/downloader/qr2;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    const-string v3, "classId.packageFqName"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/z20;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/b03$c;->r:Lcom/shabakaty/downloader/b03;

    const/4 v3, 0x1

    .line 11
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/m50;->V(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/b03;->a(Lcom/shabakaty/downloader/v20;Ljava/util/List;)Lcom/shabakaty/downloader/q20;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->k()Z

    move-result v6

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/b03$b;

    iget-object v2, p0, Lcom/shabakaty/downloader/b03$c;->r:Lcom/shabakaty/downloader/b03;

    .line 14
    iget-object v3, v2, Lcom/shabakaty/downloader/b03;->a:Lcom/shabakaty/downloader/md4;

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    const-string v0, "classId.shortClassName"

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v7, p1

    :goto_1
    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/b03$b;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hw2;ZI)V

    return-object v1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unresolved local class: "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
