.class Lcom/connectsdk/service/CastService$5;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/CastService$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

.field public final synthetic val$position:J


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$5;->this$0:Lcom/connectsdk/service/CastService;

    iput-wide p2, p0, Lcom/connectsdk/service/CastService$5;->val$position:J

    iput-object p4, p0, Lcom/connectsdk/service/CastService$5;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$5;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v2, v0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-wide v4, p0, Lcom/connectsdk/service/CastService$5;->val$position:J

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v8, Lcom/shabakaty/downloader/ey5;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/ey5;-><init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/connectsdk/service/CastService$5$1;

    invoke-direct {v1, p0}, Lcom/connectsdk/service/CastService$5$1;-><init>(Lcom/connectsdk/service/CastService$5;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/shabakaty/downloader/gt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$5;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Unable to seek"

    invoke-static {v1, v3, v2, v0}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_0
    return-void
.end method
