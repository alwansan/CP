.class public final Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideZendeskLocaleConverterFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# static fields
.field public static final INSTANCE:Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;

    invoke-direct {v0}, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;-><init>()V

    sput-object v0, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;->INSTANCE:Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;->INSTANCE:Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;

    return-object v0
.end method

.method public static provideZendeskLocaleConverter()Lzendesk/core/ZendeskLocaleConverter;
    .locals 2

    .line 1
    invoke-static {}, Lzendesk/support/GuideProviderModule;->provideZendeskLocaleConverter()Lzendesk/core/ZendeskLocaleConverter;

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
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;->get()Lzendesk/core/ZendeskLocaleConverter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ZendeskLocaleConverter;
    .locals 1

    .line 2
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;->provideZendeskLocaleConverter()Lzendesk/core/ZendeskLocaleConverter;

    move-result-object v0

    return-object v0
.end method
