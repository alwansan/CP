.class Lzendesk/core/ZendeskApplicationModule;
.super Ljava/lang/Object;
.source "ZendeskApplicationModule.java"


# static fields
.field public static final APPLICATION_CONTEXT:Ljava/lang/String; = "application_context"

.field public static final BASE_64_SERIALIZER:Ljava/lang/String; = "base_64_serializer"

.field private static final THREAD_POOL_SIZE:I = 0x5


# instance fields
.field private applicationConfiguration:Lzendesk/core/ApplicationConfiguration;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzendesk/core/ApplicationConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/ZendeskApplicationModule;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskApplicationModule;->applicationConfiguration:Lzendesk/core/ApplicationConfiguration;

    return-void
.end method

.method public static provideDeviceInfo(Landroid/content/Context;)Lzendesk/core/DeviceInfo;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/DeviceInfo;

    invoke-direct {v0, p0}, Lzendesk/core/DeviceInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/core/ZendeskApplicationModule$1;

    invoke-direct {v0}, Lzendesk/core/ZendeskApplicationModule$1;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static provideExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    return-object p0
.end method

.method public static provideGson()Lcom/shabakaty/downloader/lr1;
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mr1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mr1;-><init>()V

    sget-object v1, Lcom/shabakaty/downloader/qa1;->s:Lcom/shabakaty/downloader/qa1;

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/mr1;->c:Lcom/shabakaty/downloader/ra1;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_0

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/mr1;->a:Lcom/shabakaty/downloader/m61;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/m61;->e([I)Lcom/shabakaty/downloader/m61;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/mr1;->a:Lcom/shabakaty/downloader/m61;

    .line 5
    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/shabakaty/downloader/o95;

    invoke-direct {v2}, Lcom/shabakaty/downloader/o95;-><init>()V

    .line 6
    instance-of v3, v2, Lcom/shabakaty/downloader/ia2;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    instance-of v5, v2, Lcom/shabakaty/downloader/y92;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/shabakaty/downloader/w12;

    :cond_0
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/shabakaty/downloader/iq6;->b(Z)V

    .line 7
    instance-of v6, v2, Lcom/shabakaty/downloader/w12;

    if-eqz v6, :cond_1

    .line 8
    iget-object v6, v0, Lcom/shabakaty/downloader/mr1;->d:Ljava/util/Map;

    move-object v7, v2

    check-cast v7, Lcom/shabakaty/downloader/w12;

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v3, :cond_2

    .line 9
    instance-of v3, v2, Lcom/shabakaty/downloader/y92;

    if-eqz v3, :cond_4

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object v3

    .line 11
    iget-object v6, v0, Lcom/shabakaty/downloader/mr1;->e:Ljava/util/List;

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/cu4;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cu4;->getRawType()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_3

    const/4 v4, 0x1

    .line 13
    :cond_3
    new-instance v5, Lcom/shabakaty/downloader/dr4$c;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v3, v4, v7}, Lcom/shabakaty/downloader/dr4$c;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/cu4;ZLjava/lang/Class;)V

    .line 14
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    iget-object v3, v0, Lcom/shabakaty/downloader/mr1;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object v1

    sget-object v4, Lcom/shabakaty/downloader/zr4;->a:Lcom/shabakaty/downloader/xr4;

    .line 16
    new-instance v4, Lcom/shabakaty/downloader/as4;

    invoke-direct {v4, v1, v2}, Lcom/shabakaty/downloader/as4;-><init>(Lcom/shabakaty/downloader/cu4;Lcom/shabakaty/downloader/wr4;)V

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mr1;->a()Lcom/shabakaty/downloader/lr1;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x80
        0x8
    .end array-data
.end method

.method public static provideHttpLoggingInterceptor()Lcom/shabakaty/downloader/kw1;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/kw1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/kw1;-><init>(Lcom/shabakaty/downloader/kw1$b;I)V

    .line 3
    sget-boolean v1, Lcom/shabakaty/downloader/tk2;->d:Z

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/kw1$a;->s:Lcom/shabakaty/downloader/kw1$a;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/kw1$a;->r:Lcom/shabakaty/downloader/kw1$a;

    .line 5
    :goto_0
    iput-object v1, v0, Lcom/shabakaty/downloader/kw1;->b:Lcom/shabakaty/downloader/kw1$a;

    return-object v0
.end method

.method public static provideZendesk(Lzendesk/core/Storage;Lzendesk/core/LegacyIdentityMigrator;Lzendesk/core/IdentityManager;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/CoreModule;Lzendesk/core/ProviderStore;)Lzendesk/core/ZendeskShadow;
    .locals 9

    .line 1
    new-instance v8, Lzendesk/core/ZendeskShadow;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/core/ZendeskShadow;-><init>(Lzendesk/core/Storage;Lzendesk/core/LegacyIdentityMigrator;Lzendesk/core/IdentityManager;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/CoreModule;Lzendesk/core/ProviderStore;)V

    return-object v8
.end method


# virtual methods
.method public provideApplicationConfiguration()Lzendesk/core/ApplicationConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule;->applicationConfiguration:Lzendesk/core/ApplicationConfiguration;

    return-object v0
.end method

.method public provideApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method public provideBase64Serializer(Lzendesk/core/Serializer;)Lzendesk/core/Serializer;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskBase64Serializer;

    invoke-direct {v0, p1}, Lzendesk/core/ZendeskBase64Serializer;-><init>(Lzendesk/core/Serializer;)V

    return-object v0
.end method

.method public provideZendeskLocaleConverter()Lzendesk/core/ZendeskLocaleConverter;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskLocaleConverter;

    invoke-direct {v0}, Lzendesk/core/ZendeskLocaleConverter;-><init>()V

    return-object v0
.end method
