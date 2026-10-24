.class public final Lcom/shabakaty/downloader/sf2$c;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaAnnotationDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/sf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/sf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/sf2$c;->r:Lcom/shabakaty/downloader/sf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2$c;->r:Lcom/shabakaty/downloader/sf2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sf2;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/sf2$c;->r:Lcom/shabakaty/downloader/sf2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sf2;->b:Lcom/shabakaty/downloader/g62;

    const-string v1, "No fqName: "

    .line 3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    goto :goto_3

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sf2$c;->r:Lcom/shabakaty/downloader/sf2;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/sf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 8
    invoke-interface {v1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v1

    const-string v2, "fqName"

    .line 9
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "builtIns"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/e82;->f(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/sf2$c;->r:Lcom/shabakaty/downloader/sf2;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/sf2;->b:Lcom/shabakaty/downloader/g62;

    .line 14
    invoke-interface {v1}, Lcom/shabakaty/downloader/g62;->C()Lcom/shabakaty/downloader/q62;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/sf2$c;->r:Lcom/shabakaty/downloader/sf2;

    .line 15
    iget-object v2, v2, Lcom/shabakaty/downloader/sf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 16
    iget-object v2, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/y72;->k:Lcom/shabakaty/downloader/ku2;

    .line 18
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/ku2;->a(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    .line 19
    iget-object v1, p0, Lcom/shabakaty/downloader/sf2$c;->r:Lcom/shabakaty/downloader/sf2;

    .line 20
    iget-object v2, v1, Lcom/shabakaty/downloader/sf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 21
    iget-object v2, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 22
    iget-object v2, v2, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 23
    invoke-static {v0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 24
    iget-object v1, v1, Lcom/shabakaty/downloader/sf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 25
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 26
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->d:Lcom/shabakaty/downloader/bs0;

    .line 27
    invoke-virtual {v1}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v1

    .line 28
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->l:Lcom/shabakaty/downloader/b03;

    .line 29
    invoke-static {v2, v0, v1}, Lcom/shabakaty/downloader/rb1;->c(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/b03;)Lcom/shabakaty/downloader/q20;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    .line 30
    :cond_4
    :goto_2
    invoke-interface {v1}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    :goto_3
    return-object v0
.end method
