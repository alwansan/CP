.class public final Lcom/shabakaty/downloader/hf;
.super Ljava/lang/Object;
.source "Authenticator.kt"

# interfaces
.implements Lcom/shabakaty/downloader/if;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/shabakaty/downloader/ju3;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/vr3;
    .locals 0

    const-string p1, "response"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
