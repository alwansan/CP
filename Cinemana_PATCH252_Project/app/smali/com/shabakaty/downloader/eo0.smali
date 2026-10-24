.class public final synthetic Lcom/shabakaty/downloader/eo0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/eo0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/eo0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/eo0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/eo0;->a:Lcom/shabakaty/downloader/eo0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/go0;

    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/shabakaty/downloader/ws1;

    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/q80;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/go0;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method
