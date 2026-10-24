.class public interface abstract Lcom/shabakaty/downloader/if;
.super Ljava/lang/Object;
.source "Authenticator.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/hf;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hf;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/if;->a:Lcom/shabakaty/downloader/if;

    const/4 v0, 0x1

    and-int/2addr v0, v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/vu0;->a:Lcom/shabakaty/downloader/vu0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "defaultDns"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/shabakaty/downloader/ju3;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/vr3;
.end method
