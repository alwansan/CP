.class public final synthetic Lcom/shabakaty/downloader/o5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/o5;

.field public static final synthetic t:Lcom/shabakaty/downloader/o5;

.field public static final synthetic u:Lcom/shabakaty/downloader/o5;

.field public static final synthetic v:Lcom/shabakaty/downloader/o5;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/o5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/o5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/o5;->s:Lcom/shabakaty/downloader/o5;

    new-instance v0, Lcom/shabakaty/downloader/o5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/o5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/o5;->t:Lcom/shabakaty/downloader/o5;

    new-instance v0, Lcom/shabakaty/downloader/o5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/o5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/o5;->u:Lcom/shabakaty/downloader/o5;

    new-instance v0, Lcom/shabakaty/downloader/o5;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/o5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/o5;->v:Lcom/shabakaty/downloader/o5;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/o5;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/o5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->k(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    sget p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    return-void

    :pswitch_2
    check-cast p1, Lcom/shabakaty/downloader/xs3;

    sget-object v0, Lcom/shabakaty/downloader/p5;->f:Lcom/shabakaty/downloader/a63;

    const-string v0, "result"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 3
    iget p1, p1, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/p5;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void

    .line 5
    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
