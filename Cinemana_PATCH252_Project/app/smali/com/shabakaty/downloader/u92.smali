.class public final synthetic Lcom/shabakaty/downloader/u92;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/nz4;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/u92;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/u92;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u92;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/u92;->a:Lcom/shabakaty/downloader/u92;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/shabakaty/downloader/oz4;

    sget-object v0, Lcom/shabakaty/downloader/w92;->e:Lcom/shabakaty/downloader/w92$a;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/oz4;->f(Z)Lcom/shabakaty/downloader/oz4;

    return-void
.end method
