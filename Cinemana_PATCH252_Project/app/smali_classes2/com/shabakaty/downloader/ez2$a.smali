.class public final Lcom/shabakaty/downloader/ez2$a;
.super Ljava/lang/Object;
.source "NewKotlinTypeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ez2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/ez2$a;

.field public static final b:Lcom/shabakaty/downloader/fz2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/ez2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ez2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ez2$a;->a:Lcom/shabakaty/downloader/ez2$a;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fz2;

    sget-object v1, Lcom/shabakaty/downloader/ve2$a;->a:Lcom/shabakaty/downloader/ve2$a;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/ue2$a;->a:Lcom/shabakaty/downloader/ue2$a;

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/fz2;-><init>(Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/ue2;)V

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/ez2$a;->b:Lcom/shabakaty/downloader/fz2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
