.class public final Lcom/shabakaty/downloader/ey0$b;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager$attachGlobalListener$2"
    f = "DownloadManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ey0;->g(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/rh2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ey0$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/pw0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/downloader/gq1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gq1;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ey0$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/pw0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ey0$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/ey0$b;-><init>(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ey0$b;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ey0$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/ey0$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/ey0$b;-><init>(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ey0$b;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ey0$b;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/pw0;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/ey0$b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 5
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/gq1;->i1(Lcom/shabakaty/downloader/pw0;)V

    goto :goto_3

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/gq1;->R1(Lcom/shabakaty/downloader/pw0;)V

    goto :goto_3

    .line 7
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    .line 8
    iget-object v1, p1, Lcom/shabakaty/downloader/pw0;->A:Ljava/lang/Throwable;

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/gq1;->h0(Lcom/shabakaty/downloader/pw0;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 10
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    .line 11
    iget-wide v1, p1, Lcom/shabakaty/downloader/pw0;->t:J

    .line 12
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 13
    iget-wide v1, p1, Lcom/shabakaty/downloader/pw0;->y:J

    .line 14
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 15
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/d91;->g(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v1

    .line 16
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/gq1;->I1(Lcom/shabakaty/downloader/pw0;F)V

    goto :goto_3

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/gq1;->v0(Lcom/shabakaty/downloader/pw0;)V

    goto :goto_3

    .line 18
    :pswitch_5
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$b;->w:Lcom/shabakaty/downloader/gq1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/gq1;->u0(Lcom/shabakaty/downloader/pw0;)V

    goto :goto_3

    .line 19
    :cond_2
    iget-wide v1, p1, Lcom/shabakaty/downloader/pw0;->t:J

    .line 20
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 21
    iget-wide v1, p1, Lcom/shabakaty/downloader/pw0;->y:J

    .line 22
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 23
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/d91;->g(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v1

    .line 24
    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/gq1;->I1(Lcom/shabakaty/downloader/pw0;F)V

    .line 25
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
