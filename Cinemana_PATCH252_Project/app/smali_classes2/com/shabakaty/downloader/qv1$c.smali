.class public abstract Lcom/shabakaty/downloader/qv1$c;
.super Ljava/lang/Object;
.source "Http2Connection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/qv1$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qv1$c$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qv1$c$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qv1$c;->a:Lcom/shabakaty/downloader/qv1$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/qv1;Lcom/shabakaty/downloader/q24;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract c(Lcom/shabakaty/downloader/zv1;)V
.end method
