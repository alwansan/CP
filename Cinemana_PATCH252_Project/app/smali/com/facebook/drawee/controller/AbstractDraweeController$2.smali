.class public Lcom/facebook/drawee/controller/AbstractDraweeController$2;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/AbstractDraweeController;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/facebook/drawee/controller/AbstractDraweeController;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->c:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->b:Z

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/datasource/DataSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/datasource/AbstractDataSource;

    invoke-virtual {p1}, Lcom/facebook/datasource/AbstractDataSource;->b()Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->d()F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->c:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->a:Ljava/lang/String;

    sget-object v4, Lcom/facebook/drawee/controller/AbstractDraweeController;->u:Ljava/util/Map;

    .line 4
    invoke-virtual {v2, v3, p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->p(Ljava/lang/String;Lcom/facebook/datasource/DataSource;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    const-string v1, "ignore_old_datasource @ onProgress"

    .line 5
    invoke-virtual {v2, v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 7
    iget-object p1, v2, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->e(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->c:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->c()Ljava/lang/Throwable;

    move-result-object v2

    sget-object v3, Lcom/facebook/drawee/controller/AbstractDraweeController;->u:Ljava/util/Map;

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->v(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public f(Lcom/facebook/datasource/DataSource;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->b()Z

    move-result v5

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->e()Z

    move-result v7

    .line 3
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->d()F

    move-result v4

    .line 4
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->g()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->c:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->a:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->b:Z

    sget-object v2, Lcom/facebook/drawee/controller/AbstractDraweeController;->u:Ljava/util/Map;

    move-object v2, p1

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/facebook/drawee/controller/AbstractDraweeController;->x(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZZ)V

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->c:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    const/4 v3, 0x1

    sget-object v4, Lcom/facebook/drawee/controller/AbstractDraweeController;->u:Ljava/util/Map;

    .line 8
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->v(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_0
    return-void
.end method
