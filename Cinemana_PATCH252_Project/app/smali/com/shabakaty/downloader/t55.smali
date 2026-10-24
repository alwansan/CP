.class public final Lcom/shabakaty/downloader/t55;
.super Ljava/lang/Object;
.source "WebServicesModule_ProvideApiServices$app_productionBetaReleaseFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/zl2;

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/lt3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/t55;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/t55;->b:Lcom/shabakaty/downloader/zl2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/t55;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/t55;->b:Lcom/shabakaty/downloader/zl2;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/t55;->c:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/t55;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/t55;->b:Lcom/shabakaty/downloader/zl2;

    iget-object v1, p0, Lcom/shabakaty/downloader/t55;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/lt3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "retrofit"

    .line 3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class v0, Lcom/shabakaty/downloader/k9;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lt3;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(ApiServices::class.java)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/k9;

    return-object v0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/t55;->b:Lcom/shabakaty/downloader/zl2;

    iget-object v1, p0, Lcom/shabakaty/downloader/t55;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/usermanagement/UserManagement;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userManagement"

    .line 7
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/jf;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/jf;-><init>(Lcom/shabakaty/usermanagement/UserManagement;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
