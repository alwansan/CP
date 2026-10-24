.class public final synthetic Lcom/shabakaty/downloader/ey1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/u14$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fy1;Ljava/lang/String;Lcom/shabakaty/downloader/ky1;Landroid/util/Size;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ey1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ey1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ey1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/ey1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/ey1;->e:Landroid/util/Size;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/if3;Ljava/lang/String;Lcom/shabakaty/downloader/jf3;Landroid/util/Size;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ey1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ey1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ey1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/ey1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/ey1;->e:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/u14;Lcom/shabakaty/downloader/u14$e;)V
    .locals 4

    iget p1, p0, Lcom/shabakaty/downloader/ey1;->a:I

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ey1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/fy1;

    iget-object v0, p0, Lcom/shabakaty/downloader/ey1;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey1;->d:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ky1;

    iget-object v2, p0, Lcom/shabakaty/downloader/ey1;->e:Landroid/util/Size;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v3, p1, Lcom/shabakaty/downloader/fy1;->o:Lcom/shabakaty/downloader/hp0;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/shabakaty/downloader/hp0;->a()V

    const/4 v3, 0x0

    .line 4
    iput-object v3, p1, Lcom/shabakaty/downloader/fy1;->o:Lcom/shabakaty/downloader/hp0;

    .line 5
    :cond_0
    iget-object v3, p1, Lcom/shabakaty/downloader/fy1;->l:Lcom/shabakaty/downloader/iy1;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/iy1;->d()V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cx4;->a()Lcom/shabakaty/downloader/vt;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cx4;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/fy1;->q(Ljava/lang/String;Lcom/shabakaty/downloader/ky1;Landroid/util/Size;)Lcom/shabakaty/downloader/u14$b;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/u14$b;->e()Lcom/shabakaty/downloader/u14;

    move-result-object p2

    .line 10
    iput-object p2, p1, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cx4;->h()V

    :cond_2
    return-void

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ey1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/if3;

    iget-object v0, p0, Lcom/shabakaty/downloader/ey1;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey1;->d:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/jf3;

    iget-object v2, p0, Lcom/shabakaty/downloader/ey1;->e:Landroid/util/Size;

    sget-object v3, Lcom/shabakaty/downloader/if3;->r:Lcom/shabakaty/downloader/if3$c;

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cx4;->a()Lcom/shabakaty/downloader/vt;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cx4;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    :goto_2
    if-eqz p2, :cond_4

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/if3;->q(Ljava/lang/String;Lcom/shabakaty/downloader/jf3;Landroid/util/Size;)Lcom/shabakaty/downloader/u14$b;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/shabakaty/downloader/u14$b;->e()Lcom/shabakaty/downloader/u14;

    move-result-object p2

    .line 17
    iput-object p2, p1, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 18
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cx4;->h()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
