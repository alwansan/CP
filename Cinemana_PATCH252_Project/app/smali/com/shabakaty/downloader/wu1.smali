.class public final Lcom/shabakaty/downloader/wu1;
.super Ljava/lang/Object;
.source "HomeUseCases_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/g25;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/s25;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/UserManagement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p5, p0, Lcom/shabakaty/downloader/wu1;->a:I

    const/4 v0, 0x1

    if-eq p5, v0, :cond_3

    const/4 v0, 0x2

    if-eq p5, v0, :cond_2

    const/4 v0, 0x3

    if-eq p5, v0, :cond_1

    const/4 v0, 0x4

    if-eq p5, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    .line 10
    iput-object p4, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    .line 13
    iput-object p2, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    .line 14
    iput-object p3, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    .line 15
    iput-object p4, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 16
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    .line 18
    iput-object p2, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    .line 19
    iput-object p3, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    .line 20
    iput-object p4, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 21
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    .line 23
    iput-object p2, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    .line 24
    iput-object p3, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    .line 25
    iput-object p4, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/wu1;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/usermanagement/UserManagement;

    iget-object v1, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/jw0;

    iget-object v2, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/q15;

    .line 2
    new-instance v4, Lcom/shabakaty/downloader/m91;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/shabakaty/downloader/m91;-><init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/jw0;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/q15;)V

    return-object v4

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k9;

    iget-object v1, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/n24;

    iget-object v2, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/qm2;

    iget-object v3, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/usermanagement/UserManagement;

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/kb4;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/shabakaty/downloader/kb4;-><init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/usermanagement/UserManagement;)V

    return-object v4

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k9;

    iget-object v1, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/qm2;

    iget-object v2, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vy3;

    iget-object v3, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/n24;

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/fz3;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/shabakaty/downloader/fz3;-><init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/downloader/vy3;Lcom/shabakaty/downloader/n24;)V

    return-object v4

    .line 7
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/g25;

    iget-object v2, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/s25;

    iget-object v3, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/usermanagement/UserManagement;

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/vu1;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/shabakaty/downloader/vu1;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/g25;Lcom/shabakaty/downloader/s25;Lcom/shabakaty/usermanagement/UserManagement;)V

    return-object v4

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wu1;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/n34;

    iget-object v1, p0, Lcom/shabakaty/downloader/wu1;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/usermanagement/UserManagement;

    iget-object v2, p0, Lcom/shabakaty/downloader/wu1;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ff3;

    iget-object v3, p0, Lcom/shabakaty/downloader/wu1;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pc;

    .line 10
    new-instance v4, Lcom/shabakaty/downloader/n24;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/shabakaty/downloader/n24;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/pc;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
