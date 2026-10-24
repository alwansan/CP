.class public final Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;
.super Ljava/lang/Object;
.source "ZendeskStorageModule_ProvideMemoryCacheFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# static fields
.field private static final INSTANCE:Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    invoke-direct {v0}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;-><init>()V

    sput-object v0, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;->INSTANCE:Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;->INSTANCE:Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    return-object v0
.end method

.method public static provideMemoryCache()Lzendesk/core/MemoryCache;
    .locals 2

    .line 1
    invoke-static {}, Lzendesk/core/ZendeskStorageModule;->provideMemoryCache()Lzendesk/core/MemoryCache;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;->get()Lzendesk/core/MemoryCache;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/MemoryCache;
    .locals 1

    .line 2
    invoke-static {}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;->provideMemoryCache()Lzendesk/core/MemoryCache;

    move-result-object v0

    return-object v0
.end method
