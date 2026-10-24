.class public final synthetic Lcom/shabakaty/downloader/dx4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/fx4$a;
.implements Lcom/shabakaty/downloader/lw3$b;
.implements Lcom/shabakaty/downloader/s91;
.implements Lcom/shabakaty/downloader/gg0$a;
.implements Lcom/shabakaty/downloader/aq4;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/dx4;

.field public static final synthetic t:Lcom/shabakaty/downloader/dx4;

.field public static final synthetic u:Lcom/shabakaty/downloader/dx4;

.field public static final synthetic v:Lcom/shabakaty/downloader/dx4;

.field public static final synthetic w:Lcom/shabakaty/downloader/dx4;

.field public static final synthetic x:Lcom/shabakaty/downloader/dx4;

.field public static final synthetic y:Lcom/shabakaty/downloader/dx4;

.field public static final synthetic z:Lcom/shabakaty/downloader/dx4;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/dx4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dx4;->s:Lcom/shabakaty/downloader/dx4;

    new-instance v0, Lcom/shabakaty/downloader/dx4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dx4;->t:Lcom/shabakaty/downloader/dx4;

    new-instance v0, Lcom/shabakaty/downloader/dx4;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dx4;->u:Lcom/shabakaty/downloader/dx4;

    new-instance v0, Lcom/shabakaty/downloader/dx4;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dx4;->v:Lcom/shabakaty/downloader/dx4;

    new-instance v0, Lcom/shabakaty/downloader/dx4;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dx4;->w:Lcom/shabakaty/downloader/dx4;

    new-instance v0, Lcom/shabakaty/downloader/dx4;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dx4;->x:Lcom/shabakaty/downloader/dx4;

    new-instance v0, Lcom/shabakaty/downloader/dx4;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dx4;->y:Lcom/shabakaty/downloader/dx4;

    new-instance v0, Lcom/shabakaty/downloader/dx4;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dx4;->z:Lcom/shabakaty/downloader/dx4;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/dx4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/dx4;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/eg0;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zl0;->b:Lcom/shabakaty/downloader/gg0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gg0;->h(Lcom/shabakaty/downloader/eg0;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/shabakaty/downloader/gg0;->a(Landroid/util/JsonReader;)Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;

    move-result-object p1

    return-object p1
.end method

.method public c()[Lcom/shabakaty/downloader/n91;
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/dx4;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/t53;

    invoke-direct {v2}, Lcom/shabakaty/downloader/t53;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :pswitch_1
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/ch1;

    invoke-direct {v2}, Lcom/shabakaty/downloader/ch1;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :goto_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/m55;

    invoke-direct {v2}, Lcom/shabakaty/downloader/m55;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic f(Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/r91;->a(Lcom/shabakaty/downloader/s91;Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;

    move-result-object p1

    return-object p1
.end method
