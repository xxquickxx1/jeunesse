# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150607202055) do

  create_table "courseitems", force: :cascade do |t|
    t.string   "title"
    t.text     "intro"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "publish"
    t.integer  "course_id"
    t.text     "description"
    t.string   "time"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.text     "intro"
    t.string   "image"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
    t.boolean  "publish"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "notifications", force: :cascade do |t|
    t.string   "notiable_id"
    t.string   "notiable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "notiable_foreign"
  end

  create_table "refinery_blog_categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "refinery_blog_categories", ["id"], name: "index_refinery_blog_categories_on_id"
  add_index "refinery_blog_categories", ["slug"], name: "index_refinery_blog_categories_on_slug"

  create_table "refinery_blog_categories_blog_posts", force: :cascade do |t|
    t.integer "blog_category_id"
    t.integer "blog_post_id"
  end

  add_index "refinery_blog_categories_blog_posts", ["blog_category_id", "blog_post_id"], name: "index_blog_categories_blog_posts_on_bc_and_bp"

  create_table "refinery_blog_category_translations", force: :cascade do |t|
    t.integer  "refinery_blog_category_id", null: false
    t.string   "locale",                    null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title"
    t.string   "slug"
  end

  add_index "refinery_blog_category_translations", ["locale"], name: "index_refinery_blog_category_translations_on_locale"
  add_index "refinery_blog_category_translations", ["refinery_blog_category_id"], name: "index_a0315945e6213bbe0610724da0ee2de681b77c31"

  create_table "refinery_blog_comments", force: :cascade do |t|
    t.integer  "blog_post_id"
    t.boolean  "spam"
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refinery_blog_comments", ["blog_post_id"], name: "index_refinery_blog_comments_on_blog_post_id"
  add_index "refinery_blog_comments", ["id"], name: "index_refinery_blog_comments_on_id"

  create_table "refinery_blog_post_translations", force: :cascade do |t|
    t.integer  "refinery_blog_post_id", null: false
    t.string   "locale",                null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.text     "body"
    t.text     "custom_teaser"
    t.string   "custom_url"
    t.string   "slug"
    t.string   "title"
  end

  add_index "refinery_blog_post_translations", ["locale"], name: "index_refinery_blog_post_translations_on_locale"
  add_index "refinery_blog_post_translations", ["refinery_blog_post_id"], name: "index_refinery_blog_post_translations_on_refinery_blog_post_id"

  create_table "refinery_blog_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "draft"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "custom_url"
    t.text     "custom_teaser"
    t.string   "source_url"
    t.string   "source_url_title"
    t.integer  "access_count",     default: 0
    t.string   "slug"
    t.integer  "image_id"
  end

  add_index "refinery_blog_posts", ["access_count"], name: "index_refinery_blog_posts_on_access_count"
  add_index "refinery_blog_posts", ["id"], name: "index_refinery_blog_posts_on_id"
  add_index "refinery_blog_posts", ["slug"], name: "index_refinery_blog_posts_on_slug"

  create_table "refinery_image_page_translations", force: :cascade do |t|
    t.integer  "refinery_image_page_id", null: false
    t.string   "locale",                 null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.text     "caption"
  end

  add_index "refinery_image_page_translations", ["locale"], name: "index_refinery_image_page_translations_on_locale"
  add_index "refinery_image_page_translations", ["refinery_image_page_id"], name: "index_186c9a170a0ab319c675aa80880ce155d8f47244"

  create_table "refinery_image_pages", force: :cascade do |t|
    t.integer "image_id"
    t.integer "page_id"
    t.integer "position"
    t.text    "caption"
    t.string  "page_type", default: "page"
  end

  add_index "refinery_image_pages", ["image_id"], name: "index_refinery_image_pages_on_image_id"
  add_index "refinery_image_pages", ["page_id"], name: "index_refinery_image_pages_on_page_id"

  create_table "refinery_images", force: :cascade do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_title"
    t.string   "image_alt"
  end

  create_table "refinery_page_part_translations", force: :cascade do |t|
    t.integer  "refinery_page_part_id", null: false
    t.string   "locale",                null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.text     "body"
  end

  add_index "refinery_page_part_translations", ["locale"], name: "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], name: "index_refinery_page_part_translations_on_refinery_page_part_id"

  create_table "refinery_page_parts", force: :cascade do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refinery_page_parts", ["id"], name: "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], name: "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", force: :cascade do |t|
    t.integer  "refinery_page_id", null: false
    t.string   "locale",           null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
  end

  add_index "refinery_page_translations", ["locale"], name: "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], name: "index_refinery_page_translations_on_refinery_page_id"

  create_table "refinery_pages", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.string   "custom_slug"
    t.boolean  "show_in_menu",        default: true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           default: true
    t.boolean  "draft",               default: false
    t.boolean  "skip_to_first_child", default: false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "show_in_footer",      default: true
  end

  add_index "refinery_pages", ["depth"], name: "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], name: "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], name: "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], name: "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], name: "index_refinery_pages_on_rgt"

  create_table "refinery_portfolio_galleries", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_portfolio_gallery_translations", force: :cascade do |t|
    t.integer  "refinery_portfolio_gallery_id", null: false
    t.string   "locale",                        null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "title"
    t.text     "body"
  end

  add_index "refinery_portfolio_gallery_translations", ["locale"], name: "index_refinery_portfolio_gallery_translations_on_locale"
  add_index "refinery_portfolio_gallery_translations", ["refinery_portfolio_gallery_id"], name: "index_dacf6685c3221de568049c599f2a69d1c1f9dd25"

  create_table "refinery_portfolio_item_translations", force: :cascade do |t|
    t.integer  "refinery_portfolio_item_id", null: false
    t.string   "locale",                     null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "title"
    t.text     "caption"
  end

  add_index "refinery_portfolio_item_translations", ["locale"], name: "index_refinery_portfolio_item_translations_on_locale"
  add_index "refinery_portfolio_item_translations", ["refinery_portfolio_item_id"], name: "index_2f72df747b84672dbcc6cb153c8031486c5de521"

  create_table "refinery_portfolio_items", force: :cascade do |t|
    t.string   "title"
    t.string   "caption"
    t.integer  "image_id",   null: false
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "refinery_product_translations", force: :cascade do |t|
    t.integer  "refinery_product_id", null: false
    t.string   "locale",              null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "body"
    t.string   "slug"
    t.string   "title"
  end

  add_index "refinery_product_translations", ["locale"], name: "index_refinery_product_translations_on_locale"
  add_index "refinery_product_translations", ["refinery_product_id"], name: "index_refinery_product_translations_on_refinery_product_id"

  create_table "refinery_products", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "draft",        default: true
    t.datetime "published_at"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.integer  "file_id"
    t.string   "sku"
  end

  add_index "refinery_products", ["file_id"], name: "index_refinery_products_on_file_id"
  add_index "refinery_products", ["id"], name: "index_refinery_products_on_id"
  add_index "refinery_products", ["slug"], name: "index_refinery_products_on_slug"

  create_table "refinery_products_categories", force: :cascade do |t|
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.integer  "promote"
    t.integer  "photo_id"
    t.text     "body"
  end

  add_index "refinery_products_categories", ["id"], name: "index_refinery_products_categories_on_id"
  add_index "refinery_products_categories", ["slug"], name: "index_refinery_products_categories_on_slug"

  create_table "refinery_products_categories_products", force: :cascade do |t|
    t.integer "products_category_id"
    t.integer "product_id"
  end

  add_index "refinery_products_categories_products", ["products_category_id", "product_id"], name: "index_products_categories_products_on_pc_and_p"

  create_table "refinery_products_category_translations", force: :cascade do |t|
    t.integer  "refinery_products_category_id", null: false
    t.string   "locale",                        null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "slug"
    t.string   "title"
    t.text     "body"
  end

  add_index "refinery_products_category_translations", ["locale"], name: "index_refinery_products_category_translations_on_locale"
  add_index "refinery_products_category_translations", ["refinery_products_category_id"], name: "index_995c7eec70348a18da3f67baf581eaf80ed0f31b"

  create_table "refinery_products_properties", force: :cascade do |t|
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refinery_products_properties", ["id"], name: "index_refinery_products_properties_on_id"

  create_table "refinery_products_properties_product_translations", force: :cascade do |t|
    t.integer  "refinery_products_properties_product_id", null: false
    t.string   "locale",                                  null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "value"
  end

  add_index "refinery_products_properties_product_translations", ["locale"], name: "index_590bac9f6b7005d36aa6717481924e0c3a072d8f"
  add_index "refinery_products_properties_product_translations", ["refinery_products_properties_product_id"], name: "index_912fb836d087c5d1b3f2e5c7f02ed7dc3683f6ac"

  create_table "refinery_products_properties_products", force: :cascade do |t|
    t.integer "products_property_id"
    t.integer "product_id"
    t.text    "value"
  end

  add_index "refinery_products_properties_products", ["products_property_id", "product_id"], name: "index_products_properties_products_on_pp_and_p", unique: true

  create_table "refinery_products_property_translations", force: :cascade do |t|
    t.integer  "refinery_products_property_id", null: false
    t.string   "locale",                        null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "title"
  end

  add_index "refinery_products_property_translations", ["locale"], name: "index_refinery_products_property_translations_on_locale"
  add_index "refinery_products_property_translations", ["refinery_products_property_id"], name: "index_4c979172aea997b9ed4633b3ddc58bbf542f5ec6"

  create_table "refinery_resources", force: :cascade do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_roles", force: :cascade do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], name: "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], name: "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_settings", force: :cascade do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "destroyable",     default: true
    t.string   "scoping"
    t.boolean  "restricted",      default: false
    t.string   "form_value_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "title"
  end

  add_index "refinery_settings", ["name"], name: "index_refinery_settings_on_name"

  create_table "refinery_user_plugins", force: :cascade do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], name: "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], name: "index_refinery_user_plugins_on_user_id_and_name", unique: true

  create_table "refinery_users", force: :cascade do |t|
    t.string   "username",               null: false
    t.string   "email",                  null: false
    t.string   "encrypted_password",     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "full_name"
  end

  add_index "refinery_users", ["id"], name: "index_refinery_users_on_id"
  add_index "refinery_users", ["slug"], name: "index_refinery_users_on_slug"

  create_table "seo_meta", force: :cascade do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.text     "meta_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seo_meta", ["id"], name: "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], name: "id_type_index_on_seo_meta"

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "place"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subscriptions", ["course_id"], name: "index_subscriptions_on_course_id"
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id"

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "templates", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "userblogs", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "intro"
    t.text     "description"
    t.string   "tags"
    t.string   "seo_title"
    t.text     "meta_description"
    t.string   "category"
    t.string   "user_id"
    t.integer  "template_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "slug"
  end

  add_index "userblogs", ["slug"], name: "index_userblogs_on_slug", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
