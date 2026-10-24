.class public final synthetic Lcom/shabakaty/downloader/nv5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/o36;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/nv5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/nv5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nv5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nv5;->a:Lcom/shabakaty/downloader/nv5;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/d46;->b:Lcom/shabakaty/downloader/z36;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/r97;->s:Lcom/shabakaty/downloader/r97;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/r97;->b()Lcom/shabakaty/downloader/t97;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/t97;->b()Z

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
