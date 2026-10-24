.class public final Lcom/shabakaty/downloader/a90$g;
.super Lcom/shabakaty/downloader/af2;
.source "Composer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/a90;-><init>(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/pw0;",
        "Ljava/lang/Float;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/a90$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/a90$g;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a90$g;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a90$g;->r:Lcom/shabakaty/downloader/a90$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
