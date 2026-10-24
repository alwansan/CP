.class public final Lcom/shabakaty/downloader/am$a$b$a;
.super Ljava/lang/Object;
.source "BinaryClassAnnotationAndConstantLoaderImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/am$a$b;->d(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/he2$a;

.field public final synthetic b:Lcom/shabakaty/downloader/he2$a;

.field public final synthetic c:Lcom/shabakaty/downloader/am$a$b;

.field public final synthetic d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/he2$a;Lcom/shabakaty/downloader/am$a$b;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/he2$a;",
            "Lcom/shabakaty/downloader/am$a$b;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/r8;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/am$a$b$a;->b:Lcom/shabakaty/downloader/he2$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/am$a$b$a;->c:Lcom/shabakaty/downloader/am$a$b;

    iput-object p3, p0, Lcom/shabakaty/downloader/am$a$b$a;->d:Ljava/util/ArrayList;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/am$a$b$a;->a:Lcom/shabakaty/downloader/he2$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b$a;->b:Lcom/shabakaty/downloader/he2$a;

    invoke-interface {v0}, Lcom/shabakaty/downloader/he2$a;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b$a;->c:Lcom/shabakaty/downloader/am$a$b;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/am$a$b;->a:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/c9;

    iget-object v2, p0, Lcom/shabakaty/downloader/am$a$b$a;->d:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/r8;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/c9;-><init>(Lcom/shabakaty/downloader/r8;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b$a;->a:Lcom/shabakaty/downloader/he2$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/he2$a;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/he2$b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b$a;->a:Lcom/shabakaty/downloader/he2$a;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/he2$a;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/he2$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b$a;->a:Lcom/shabakaty/downloader/he2$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/he2$a;->d(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b$a;->a:Lcom/shabakaty/downloader/he2$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/he2$a;->e(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/x20;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b$a;->a:Lcom/shabakaty/downloader/he2$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/he2$a;->f(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/x20;)V

    return-void
.end method
