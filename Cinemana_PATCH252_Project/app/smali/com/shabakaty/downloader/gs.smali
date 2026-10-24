.class public final synthetic Lcom/shabakaty/downloader/gs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ix4$b;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/gs;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/gs;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gs;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gs;->a:Lcom/shabakaty/downloader/gs;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/shabakaty/downloader/ix4;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ls;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ls;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
