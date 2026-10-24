.class public final Lcom/shabakaty/downloader/j54$a;
.super Ljava/lang/Object;
.source "SharingStarted.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/j54;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/j54;

.field public static final b:Lcom/shabakaty/downloader/j54;

.field public static final synthetic c:Lcom/shabakaty/downloader/j54$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j54$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/j54$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j54$a;->c:Lcom/shabakaty/downloader/j54$a;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/bc4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bc4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j54$a;->a:Lcom/shabakaty/downloader/j54;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/cc4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cc4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j54$a;->b:Lcom/shabakaty/downloader/j54;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
