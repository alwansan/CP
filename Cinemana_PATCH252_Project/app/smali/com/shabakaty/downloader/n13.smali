.class public final Lcom/shabakaty/downloader/n13;
.super Ljava/lang/Object;
.source "NotificationsUseCases_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/k9;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/qm2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/n13;->a:I

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 4
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 7
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 10
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 13
    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 16
    :pswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    .line 18
    iput-object p2, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 19
    :pswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    .line 21
    iput-object p2, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 22
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    .line 24
    iput-object p2, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/n13;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ff3;

    iget-object v1, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ou1;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/ka4;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/ka4;-><init>(Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/ou1;)V

    return-object v2

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/usermanagement/UserManagement;

    iget-object v1, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/n24;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/kb1;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/kb1;-><init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/n24;)V

    return-object v2

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fz3;

    iget-object v1, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ff3;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/hz3;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/hz3;-><init>(Lcom/shabakaty/downloader/fz3;Lcom/shabakaty/downloader/ff3;)V

    return-object v2

    .line 7
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/usermanagement/UserManagement;

    iget-object v1, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ff3;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/g21;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/g21;-><init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ff3;)V

    return-object v2

    .line 9
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/jw0;

    iget-object v1, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/qx0;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/qx0;-><init>(Lcom/shabakaty/downloader/jw0;Landroid/content/Context;)V

    return-object v2

    .line 11
    :pswitch_5
    iget-object v0, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q54;

    iget-object v1, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/r54;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/r54;-><init>(Lcom/shabakaty/downloader/q54;Ljava/lang/ref/WeakReference;)V

    return-object v2

    .line 13
    :pswitch_6
    iget-object v0, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k9;

    iget-object v1, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/qm2;

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/m13;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/m13;-><init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/qm2;)V

    return-object v2

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/n13;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/uz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/n13;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/qd4;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/qd4;-><init>(Lcom/shabakaty/downloader/uz0;Landroid/content/Context;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
