.class public final synthetic Lcom/shabakaty/downloader/ku1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/ku1;

.field public static final synthetic t:Lcom/shabakaty/downloader/ku1;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/ku1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ku1;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ku1;->s:Lcom/shabakaty/downloader/ku1;

    new-instance v0, Lcom/shabakaty/downloader/ku1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ku1;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ku1;->t:Lcom/shabakaty/downloader/ku1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/ku1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lcom/shabakaty/downloader/ku1;->r:I

    const-string v1, "it"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 2
    :goto_0
    move-object v4, p1

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 3
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, v4, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;->status:Ljava/lang/String;

    const-string v0, "true"

    .line 5
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    goto :goto_1

    .line 9
    :cond_0
    new-instance v11, Ljava/lang/Throwable;

    const-string p1, "status is not true"

    invoke-direct {v11, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 11
    sget-object v9, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    const/4 v12, 0x0

    const/16 v13, 0x8

    move-object v8, p1

    .line 12
    invoke-direct/range {v8 .. v13}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
