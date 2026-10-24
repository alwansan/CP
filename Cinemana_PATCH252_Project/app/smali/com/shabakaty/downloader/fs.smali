.class public final synthetic Lcom/shabakaty/downloader/fs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/qt$a;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/fs;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/fs;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fs;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/fs;->a:Lcom/shabakaty/downloader/fs;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/shabakaty/downloader/hu;Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/qt;
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/tr;

    invoke-direct {v0, p1, p2, p3}, Lcom/shabakaty/downloader/tr;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/hu;Lcom/shabakaty/downloader/fu;)V

    return-object v0
.end method
