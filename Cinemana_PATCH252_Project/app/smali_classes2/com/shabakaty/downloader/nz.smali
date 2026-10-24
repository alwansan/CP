.class public final Lcom/shabakaty/downloader/nz;
.super Lcom/shabakaty/downloader/af2;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# static fields
.field public static final r:Lcom/shabakaty/downloader/nz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/nz;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nz;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nz;->r:Lcom/shabakaty/downloader/nz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xn1;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
