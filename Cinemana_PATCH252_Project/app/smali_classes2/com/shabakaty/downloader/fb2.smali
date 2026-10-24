.class public final Lcom/shabakaty/downloader/fb2;
.super Lcom/shabakaty/downloader/nh0$b;
.source "JvmBuiltInsCustomizer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/nh0$b<",
        "Lcom/shabakaty/downloader/q20;",
        "Lcom/shabakaty/downloader/ab2$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/shabakaty/downloader/lo3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/lo3<",
            "Lcom/shabakaty/downloader/ab2$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/lo3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/lo3<",
            "Lcom/shabakaty/downloader/ab2$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/fb2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/fb2;->b:Lcom/shabakaty/downloader/lo3;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nh0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fb2;->b:Lcom/shabakaty/downloader/lo3;

    iget-object v0, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ab2$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/ab2$a;->t:Lcom/shabakaty/downloader/ab2$a;

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/q20;

    const-string v0, "javaClassDescriptor"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/c64;->a:Lcom/shabakaty/downloader/c64;

    iget-object v1, p0, Lcom/shabakaty/downloader/fb2;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/rm3;->s(Lcom/shabakaty/downloader/c64;Lcom/shabakaty/downloader/q20;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/jb2;->a:Lcom/shabakaty/downloader/jb2;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/jb2;->c:Ljava/util/Set;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/fb2;->b:Lcom/shabakaty/downloader/lo3;

    sget-object v0, Lcom/shabakaty/downloader/ab2$a;->r:Lcom/shabakaty/downloader/ab2$a;

    iput-object v0, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/jb2;->d:Ljava/util/Set;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/shabakaty/downloader/fb2;->b:Lcom/shabakaty/downloader/lo3;

    sget-object v0, Lcom/shabakaty/downloader/ab2$a;->s:Lcom/shabakaty/downloader/ab2$a;

    iput-object v0, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/jb2;->b:Ljava/util/Set;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/shabakaty/downloader/fb2;->b:Lcom/shabakaty/downloader/lo3;

    sget-object v0, Lcom/shabakaty/downloader/ab2$a;->u:Lcom/shabakaty/downloader/ab2$a;

    iput-object v0, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/fb2;->b:Lcom/shabakaty/downloader/lo3;

    iget-object p1, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
