.class public final synthetic Lcom/shabakaty/downloader/hs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/gr;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/hs;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/hs;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hs;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/hs;->a:Lcom/shabakaty/downloader/hs;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    return p1
.end method
