.class public final Lcom/shabakaty/downloader/x82;
.super Lcom/shabakaty/downloader/y45;
.source "JavaVisibilities.kt"


# static fields
.field public static final c:Lcom/shabakaty/downloader/x82;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/x82;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x82;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/x82;->c:Lcom/shabakaty/downloader/x82;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "protected_static"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/y45;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "protected/*protected static*/"

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/y45;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/v45$g;->c:Lcom/shabakaty/downloader/v45$g;

    return-object v0
.end method
