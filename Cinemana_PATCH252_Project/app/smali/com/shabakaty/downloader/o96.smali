.class public final Lcom/shabakaty/downloader/o96;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/sv6;


# static fields
.field public static final a:Lcom/shabakaty/downloader/sv6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/o96;

    invoke-direct {v0}, Lcom/shabakaty/downloader/o96;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/o96;->a:Lcom/shabakaty/downloader/sv6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    invoke-static {p1}, Lcom/shabakaty/downloader/p96;->a(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
